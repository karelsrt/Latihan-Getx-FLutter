import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihangetx/core.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanController extends GetxController {
  ScanView? view;

  int selectedIndex = 0;

  RxString idtoko = ''.obs;
  QRViewController? qrController;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  bool isCameraOpen = false;
  void updateIndex(int newIndex) {
    selectedIndex = newIndex;
    update();
  }

  void toggleCamera() {
    if (qrController != null) {
      if (isCameraOpen) {
        qrController!.pauseCamera();
      } else {
        qrController!.resumeCamera();
      }
      isCameraOpen = !isCameraOpen;
    }
  }

  void onQRViewCreated(QRViewController controller) {
    qrController = controller;

    controller.scannedDataStream.listen((scanData) {
      toggleCamera();
      print(scanData.code);
      idtoko.value = scanData.code.toString();

      Get.off(() => const Di2View(),
          binding: BindingsBuilder.put(() => ScanController()));
    });
  }
}

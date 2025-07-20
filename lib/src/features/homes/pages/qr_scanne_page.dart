import 'dart:io';

import 'package:cotiz/src/themes/themes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';
import 'package:sizer/sizer.dart';

class QrScannePage extends StatefulWidget {
  const QrScannePage({super.key});

  @override
  State<QrScannePage> createState() => _QrScannePageState();
}

class _QrScannePageState extends State<QrScannePage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;
  bool isFlashOn = false;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorFond,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(3.w),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Scanne",
                    style: TextStyle(
                      color: appBlack,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: EdgeInsets.all(4.w),
                      decoration: BoxDecoration(
                        color: appWhite,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.close_outlined),
                    ),
                  ),
                ],
              ),
              Gap(2.h),
              Expanded(
                flex: 5,
                child: QRView(
                  key: qrKey,
                  onQRViewCreated: _onQRViewCreated,
                  overlay: QrScannerOverlayShape(
                    overlayColor: appColorFond.withValues(alpha: .8),
                    borderColor: appWhite,
                    borderRadius: 3.w,
                    borderLength: 30,
                    borderWidth: 8,
                    cutOutSize: 300,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(3.w),
                  child: Column(
                    children: [
                      Text(
                        "Placez le QR code dans le cadre pour scanner",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                      Gap(2.h),
                      FloatingActionButton(
                        elevation: 0,
                        heroTag: 'flash',
                        backgroundColor: appBlack,
                        foregroundColor: Colors.white,
                        shape: CircleBorder(),
                        onPressed: _toggleFlash,
                        child: Icon(
                          isFlashOn
                              ? Icons.flash_off_outlined
                              : Icons.flash_on_outlined,
                        ),
                      ),
                      Center(
                        child: (result != null)
                            ? null
                            : TextButton(
                                onPressed: () {},
                                child: Text("Entrer le code manuellement"),
                              ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _toggleFlash() async {
    await controller?.toggleFlash();
    bool? flashStatus = await controller?.getFlashStatus();
    setState(() {
      isFlashOn = flashStatus ?? false;
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}

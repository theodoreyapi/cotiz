import 'package:cotiz/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:sizer/sizer.dart';

class QrCodePage extends StatefulWidget {
  const QrCodePage({super.key});

  @override
  State<QrCodePage> createState() => _QrCodePageState();
}

class _QrCodePageState extends State<QrCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColorFond,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(3.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "QR Code",
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
              Spacer(),
              Center(
                child: QrImageView(
                  data: 'This QR code has an embedded image as well',
                  version: QrVersions.auto,
                  size: 320,
                  gapless: false,
                  embeddedImage: AssetImage('assets/images/wave.png'),
                  embeddedImageStyle: QrEmbeddedImageStyle(
                    size: Size(80, 80),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

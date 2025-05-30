import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodePage extends StatefulWidget {
  const QrCodePage({super.key});

  @override
  State<QrCodePage> createState() => _QrCodePageState();
}

class _QrCodePageState extends State<QrCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
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
      ),
    );
  }
}

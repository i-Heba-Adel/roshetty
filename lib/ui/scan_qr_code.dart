import 'package:flutter/material.dart';

class ScannerQrCodeScreen extends StatefulWidget {
  const ScannerQrCodeScreen({Key? key}) : super(key: key);

  @override
  State<ScannerQrCodeScreen> createState() => _ScannerQrCodeScreenState();
}

class _ScannerQrCodeScreenState extends State<ScannerQrCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Scanner QR Code')),
    );
  }
}

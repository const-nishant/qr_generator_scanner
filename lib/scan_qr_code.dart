import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class scan_Qr extends StatefulWidget {
  const scan_Qr({super.key});

  @override
  State<scan_Qr> createState() => _scan_QrState();
}

class _scan_QrState extends State<scan_Qr> {
  String qrResult = 'Scanned Data will appear here';
  Future<void> scanQR() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      if (!mounted) return;
      setState(() {
        this.qrResult = qrCode.toString();
      });
    } on PlatformException {
      qrResult = 'Fail to read QR Code';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Scanner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              '$qrResult',
              style: const TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: scanQR,
              child: const Text('Scan code'),
            )
          ],
        ),
      ),
    );
  }
}
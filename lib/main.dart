import 'package:flutter/material.dart';
import 'package:qr_generator_scanner/Homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR Code Scanner & Generator',
      home: Homepage(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:qr_generator_scanner/generate_qr_code.dart';
import 'package:qr_generator_scanner/scan_qr_code.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Scanner & Generator'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const scan_Qr())));
              });
            }, child: const Text("Scan QR Code")),
            const SizedBox(height: 48,),
            ElevatedButton(onPressed: (){
              setState(() {
                Navigator.of(context).push(MaterialPageRoute(builder: ((context) => const generate_QrCode())));
              });
            }, child: const Text('Generate QR Code')),
          ],
        ),
      ),
    );
  }
}
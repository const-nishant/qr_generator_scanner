import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';



class generate_QrCode extends StatefulWidget {
  const generate_QrCode({super.key});

  @override
  State<generate_QrCode> createState() => _generate_QrCodeState();
}

class _generate_QrCodeState extends State<generate_QrCode> {
  
  TextEditingController urlcontroller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generate QR Code'),
        
      ),
      body:Center(
        child: SingleChildScrollView(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(urlcontroller.text.isNotEmpty)
              
             QrImage(data: urlcontroller.text,size:200,),//fix this
              const SizedBox(height: 18,),
              Container(
                padding: const EdgeInsets.only(left: 10,right: 10,),
                child: TextField(
                  controller: urlcontroller,
                  decoration: InputDecoration(
                    hintText: 'Enter your data',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    labelText: 'Enter your data',
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                setState(() {
                  
                });
              }, child: Text("Generate QR Code"),
              
              ),
             ],
          )
           ),
      ),
    );
  }
}
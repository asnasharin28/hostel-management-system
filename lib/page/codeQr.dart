import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrCodeScannerPage extends StatefulWidget {
  @override
  _QrCodeScannerPageState createState() => _QrCodeScannerPageState();
}

class _QrCodeScannerPageState extends State<QrCodeScannerPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  String result = "";

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData.code!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Text('Scan QR Code'),
              SizedBox(height: 16), // Add some space between the text and QR code view
              Container(
                decoration: BoxDecoration(
                  color:Color(0xFFCE5A67),
                   borderRadius: BorderRadius.circular(10),
                  
                ),
                padding: EdgeInsets.fromLTRB(30,50,30,50),
                height: 350,
                width:250,
                child: Expanded(
                  child: QRView(
                    key: qrKey,
                    onQRViewCreated: _onQRViewCreated,
                    overlay: QrScannerOverlayShape(
                    borderColor: Colors.white,
                    borderRadius: 10,
                    borderLength: 30,
                    borderWidth: 10,
                    cutOutSize: 250, // Adjust cutOutSize to fit the scanned QR code as a square
                  ),
                  ),
                ),
              ),
              SizedBox(height: 16), // Add some space between the QR code view and the result
              Text('Result: $result'), // Display the scanned QR code result
            ],
          ),
        ),
      ),
    );
  }
}

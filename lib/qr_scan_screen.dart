import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:graduation_project/qr_code.dart';
import 'api.dart';

class QRScanScreen extends StatefulWidget {
  static const String id = 'qr_scan_screen';
  @override
  _QRScanScreenState createState() => _QRScanScreenState();
}

class _QRScanScreenState extends State<QRScanScreen> {
  String data;
  //'{"courseID":"IS215","sessionID":"2021-03-21 14:26:10bwg49ihyr"}';

  String studentID = '20170000';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade600,
        title: Text('Scan QR code'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Scan Result',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white54,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'QRCode',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 72),
            RaisedButton(
              child: Text(
                'Start QR scan',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              shape: StadiumBorder(),
              color: Colors.grey.shade600,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              textColor: Colors.white,
              onPressed: () async {
                await scanQRCode();
                API.createQR(QRCode(
                  data: data,
                  studentID: studentID,
                ));
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> scanQRCode() async {
    print('in');
    String qrCode;
    try {
      qrCode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.DEFAULT,
      );
    } on PlatformException {
      data = 'Failed to get platform version.';
      //print(qrCode);
    }
    if (!mounted) return;

    setState(() {
      this.data = qrCode;
      print(this.data);
    });
  }
}

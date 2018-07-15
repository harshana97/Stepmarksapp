import 'dart:async';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';


class SecondFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  return new QrScan();
  }
}

class QrScan extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QrScanState();
  }
}

//void handleResult(Result result) {
//  if(Patterns.WEB_URL.matcher(result.getText).matches()) {
//    // Open URL
//    Intent browserIntent = new Intent(Intent.ACTION_VIEW, Uri.parse(result.getText()));
//    startActivity(browserIntent);
//  }
//}


class QrScanState extends State<QrScan> {
  String result = "Tap the Camera Button";

    Future _scanQR() async {
      try {
        String qrResult = await BarcodeScanner.scan();
          setState(() {
            result = qrResult;
          });

      } on PlatformException catch (ex) {
        if (ex.code == BarcodeScanner.CameraAccessDenied) {
            setState(() {
              result = "Camera permission denied!";
            });
        } else {
            setState(() {
              result = "Unknown Error! $ex";
            });
        }
      } on FormatException {
          setState(() {
            result = "You pressed the back button before scanning anything!";
          });
      } catch (ex) {
          setState(() {
            result = "Unknown Error! $ex";
          });
      }
    }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text(result,
            style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)),
      ),
      floatingActionButton: new FloatingActionButton.extended(
        icon: new Icon(Icons.camera_alt),
        label: new Text("Scan"),
        backgroundColor: Color.fromARGB(250, 1, 50, 67),
        onPressed:_scanQR,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
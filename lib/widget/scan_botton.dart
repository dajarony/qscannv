import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanBWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666',
          'Scanning...',
          false,
          ScanMode.QR,
        );
        print(barcodeScanRes);
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.deepPurpleAccent,
    );
  }
}

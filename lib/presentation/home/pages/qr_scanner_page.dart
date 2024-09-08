import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../../core/core.dart';
import '../../../data/datasources/product/product_local_datasource.dart';
import '../main_page.dart';

class QrScannerPage extends StatefulWidget {
  const QrScannerPage({super.key});

  @override
  State<QrScannerPage> createState() => _QrScannerPageState();
}

class _QrScannerPageState extends State<QrScannerPage> {
  Barcode? _barcode;

  void _handleBarcode(BarcodeCapture barcodes) async {
    if (mounted) {
      _barcode = barcodes.barcodes.firstOrNull;
      if (_barcode != null) {
        final qrCode = _barcode!.displayValue;
        if (qrCode != null && qrCode.isNotEmpty) {
          final isValid =
              await ProductLocalDatasource.instance.verifyQrCode(qrCode);
          if (isValid) {
            debugPrint('Scan result -> $qrCode is valid');
            context.pop(context);
            showDialog(
              context: context,
              builder: (context) => Theme(
                data: ThemeData(canvasColor: Colors.white),
                child: SuccessFailedDialogWidget(
                  indicator: Assets.images.valid.path,
                  title: 'Tiket berhasil diverifikasi.',
                  subTitle: 'Ayo, nikmati petualangan seru Anda sekarang!',
                ),
              ),
            );
          } else {
            debugPrint('Scan result -> $qrCode is invalid');
            context.pop(context);
            showDialog(
              context: context,
              builder: (context) => Theme(
                data: ThemeData(canvasColor: Colors.white),
                child: SuccessFailedDialogWidget(
                  indicator: Assets.images.notValid.path,
                  title: 'Tiket tidak valid',
                  subTitle:
                      'QR code tidak dapat dibaca. mohon lakukan pemindaian ulang',
                ),
              ),
            );
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Scanner'),
        leading: GestureDetector(
          onTap: () => context.pop(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Assets.images.back.image(),
          ),
        ),
      ),
      body: MobileScanner(
        onDetect: _handleBarcode,
      ),
    );
  }
}

class SuccessFailedDialogWidget extends StatelessWidget {
  final String indicator;
  final String title;
  final String subTitle;
  const SuccessFailedDialogWidget({
    super.key,
    required this.indicator,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      content: Padding(
        padding: const EdgeInsets.fromLTRB(40.0, 10, 40.0, 40.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(50.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.white,
                  image: DecorationImage(image: AssetImage(indicator))),
            ),
            const SpaceHeight(32.0),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: AppColors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SpaceHeight(16.0),
            Text(
              subTitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
                color: AppColors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SpaceHeight(32.0),
            ElevatedButton(
              onPressed: () {
                context.pushReplacement(const MainPage());
              },
              child: const Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}

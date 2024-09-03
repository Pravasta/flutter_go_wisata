import 'package:esc_pos_utils_plus/esc_pos_utils_plus.dart';
import 'package:intl/intl.dart';

class TransactionPrint {
  // Singleton
  TransactionPrint._init();

  static final TransactionPrint instance = TransactionPrint._init();

  Future<List<int>> printQrCode(String qrCode) async {
    List<int> bytes = [];
    // Print QR Code
    final profile = await CapabilityProfile.load();
    final generator = Generator(PaperSize.mm58, profile);

    bytes += generator.reset();

    bytes += generator.text(
      'Go Wisata',
      styles: const PosStyles(
        bold: true,
        align: PosAlign.center,
        height: PosTextSize.size1,
        width: PosTextSize.size1,
      ),
    );
    bytes += generator.text(
      'Pembayaran QRIS',
      styles: const PosStyles(
        bold: true,
        align: PosAlign.center,
        height: PosTextSize.size1,
        width: PosTextSize.size1,
      ),
    );
    // Ngasih baris 1
    bytes += generator.feed(1);

    bytes += generator.text(
      'tanggal : ${DateFormat('dd-MM-yyyy HH:mm').format(DateTime.now())}',
      styles: const PosStyles(
        bold: true,
        align: PosAlign.center,
      ),
    );

    bytes += generator.feed(1);
    bytes += generator.qrcode(
      qrCode,
      size: QRSize.size6,
      cor: QRCorrection.H,
    );
    bytes += generator.feed(1);

    bytes += generator.text(
      '~Terima Kasih~',
      styles: const PosStyles(
        bold: true,
        align: PosAlign.center,
      ),
    );

    bytes += generator.feed(3);

    return bytes;
  }
}

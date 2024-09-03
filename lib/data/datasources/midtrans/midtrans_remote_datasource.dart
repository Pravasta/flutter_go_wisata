import 'dart:convert';
import 'package:go_wisata/core/constants/variables.dart';
import 'package:go_wisata/data/model/response/qris_status_response_model.dart';
import 'package:http/http.dart' as http;
import 'package:go_wisata/data/model/response/qris_response_model.dart';

String _serverKey = 'SB-Mid-server-z_8NezgZ9T6wI3iB9N9etDDD';

class MidtransRemoteDatasource {
  String generateBasicAuthHeader(String serverKey) {
    final base64Credentials = base64Encode(utf8.encode('$serverKey:'));
    final authHeader = 'Basic $base64Credentials';

    return authHeader;
  }

  Future<QrisResponseModel> generateQrCode(
      String orderId, int grossAmount) async {
    final headers = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": generateBasicAuthHeader(_serverKey),
    };

    final body = jsonEncode({
      "payment_type": "gopay",
      "transaction_details": {
        "order_id": orderId,
        "gross_amount": grossAmount,
      }
    });

    final response = await http.post(
      Uri.parse('${Variable.baseQrisUrl}/v2/charge'),
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200) {
      return QrisResponseModel.fromJson(response.body);
    } else {
      throw Exception('Failed to generate QR Code');
    }
  }

  Future<QrisStatusResponseModel> checkPaymentStatus(String orderId) async {
    final headers = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": generateBasicAuthHeader(_serverKey),
    };
    final response = await http.post(
      Uri.parse("${Variable.baseQrisUrl}/v2/$orderId/status"),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return QrisStatusResponseModel.fromJson(response.body);
    } else {
      throw Exception('Failed to check payment method');
    }
  }
}

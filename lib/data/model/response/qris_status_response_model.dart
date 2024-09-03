import 'dart:convert';

class QrisStatusResponseModel {
  final DateTime? transactionTime;
  final String? grossAmount;
  final String? currency;
  final String? orderId;
  final String? paymentType;
  final String? signatureKey;
  final String? statusCode;
  final String? transactionId;
  final String? transactionStatus;
  final String? fraudStatus;
  final DateTime? expiryTime;
  final String? statusMessage;
  final String? merchantId;

  QrisStatusResponseModel({
    this.transactionTime,
    this.grossAmount,
    this.currency,
    this.orderId,
    this.paymentType,
    this.signatureKey,
    this.statusCode,
    this.transactionId,
    this.transactionStatus,
    this.fraudStatus,
    this.expiryTime,
    this.statusMessage,
    this.merchantId,
  });

  factory QrisStatusResponseModel.fromJson(String str) =>
      QrisStatusResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory QrisStatusResponseModel.fromMap(Map<String, dynamic> json) =>
      QrisStatusResponseModel(
        transactionTime: json["transaction_time"] == null
            ? null
            : DateTime.parse(json["transaction_time"]),
        grossAmount: json["gross_amount"],
        currency: json["currency"],
        orderId: json["order_id"],
        paymentType: json["payment_type"],
        signatureKey: json["signature_key"],
        statusCode: json["status_code"],
        transactionId: json["transaction_id"],
        transactionStatus: json["transaction_status"],
        fraudStatus: json["fraud_status"],
        expiryTime: json["expiry_time"] == null
            ? null
            : DateTime.parse(json["expiry_time"]),
        statusMessage: json["status_message"],
        merchantId: json["merchant_id"],
      );

  Map<String, dynamic> toMap() => {
        "transaction_time": transactionTime?.toIso8601String(),
        "gross_amount": grossAmount,
        "currency": currency,
        "order_id": orderId,
        "payment_type": paymentType,
        "signature_key": signatureKey,
        "status_code": statusCode,
        "transaction_id": transactionId,
        "transaction_status": transactionStatus,
        "fraud_status": fraudStatus,
        "expiry_time": expiryTime?.toIso8601String(),
        "status_message": statusMessage,
        "merchant_id": merchantId,
      };
}

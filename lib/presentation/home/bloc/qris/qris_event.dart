part of 'qris_bloc.dart';

@freezed
class QrisEvent with _$QrisEvent {
  const factory QrisEvent.started() = _Started;
  const factory QrisEvent.generateQrCode(String orderId, int grossAmount) =
      _GenerateQrCode;
}

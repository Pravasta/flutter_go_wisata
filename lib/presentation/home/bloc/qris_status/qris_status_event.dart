part of 'qris_status_bloc.dart';

@freezed
class QrisStatusEvent with _$QrisStatusEvent {
  const factory QrisStatusEvent.started() = _Started;
  const factory QrisStatusEvent.checkPaymentStatus(String orderId) =
      _CheckPaymentStatus;
}

part of 'qris_status_bloc.dart';

@freezed
class QrisStatusState with _$QrisStatusState {
  const factory QrisStatusState.initial() = _Initial;
  const factory QrisStatusState.loading() = _Loading;
  const factory QrisStatusState.qrisResponse(
      QrisStatusResponseModel qrisStatusResponse) = _Loaded;
  const factory QrisStatusState.error(String message) = _Error;
  const factory QrisStatusState.success(String message) = _Success;
  const factory QrisStatusState.pending(String message) = _Pending;
}

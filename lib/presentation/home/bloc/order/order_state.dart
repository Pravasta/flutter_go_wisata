part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = _Initial;
  const factory OrderState.loading() = _Loading;
  const factory OrderState.success({
    required List<OrderItem> orders,
    required int totalQuantity,
    required int totalPrice,
    required int paymentNominal,
    required String paymentMethod,
    required int cashierId,
    required String cashierName,
  }) = _Success;
  const factory OrderState.error(String message) = _Error;
}

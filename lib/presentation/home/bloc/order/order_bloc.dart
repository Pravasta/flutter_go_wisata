import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_wisata/data/datasources/auth/auth_local_datasource.dart';
import 'package:go_wisata/presentation/home/bloc/checkout/models/order_item.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc()
      : super(const _Success(
          orders: [],
          totalQuantity: 0,
          totalPrice: 0,
          paymentNominal: 0,
          paymentMethod: '',
          cashierId: 0,
          cashierName: '',
        )) {
    on<_AddPaymentMethod>((event, emit) async {
      final userData = await AuthLocalDatasource().getAuthData();
      emit(const _Loading());
      emit(_Success(
        orders: event.orders,
        totalQuantity: event.orders.fold(
          0,
          (previousValue, element) => previousValue + element.quantity,
        ),
        totalPrice: event.orders.fold(
          0,
          (previousValue, element) =>
              previousValue + (element.quantity * element.product.price!),
        ),
        paymentNominal: 0,
        paymentMethod: event.paymentMethod,
        cashierId: userData.user!.id!,
        cashierName: userData.user!.name!,
      ));
    });
    on<_AddNominalPayment>((event, emit) async {
      var currentState = state as _Success;
      emit(const _Loading());
      emit(_Success(
        orders: currentState.orders,
        totalQuantity: currentState.totalQuantity,
        totalPrice: currentState.totalPrice,
        paymentNominal: event.nominalPayment,
        paymentMethod: currentState.paymentMethod,
        cashierId: currentState.cashierId,
        cashierName: currentState.cashierName,
      ));
    });

    on<_Started>((event, emit) async {
      emit(const _Loading());
      emit(const _Success(
        orders: [],
        totalQuantity: 0,
        totalPrice: 0,
        paymentNominal: 0,
        paymentMethod: '',
        cashierId: 0,
        cashierName: '',
      ));
    });
  }
}

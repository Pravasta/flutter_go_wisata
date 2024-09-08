import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../../data/datasources/order/order_remote_datasource.dart';
import '../../../../data/datasources/product/product_local_datasource.dart';
import '../../../../data/model/request/order_request_model.dart';

part 'sync_order_event.dart';
part 'sync_order_state.dart';
part 'sync_order_bloc.freezed.dart';

class SyncOrderBloc extends Bloc<SyncOrderEvent, SyncOrderState> {
  final OrderRemoteDatasource _orderRemoteDatasource;
  SyncOrderBloc(this._orderRemoteDatasource) : super(const _Initial()) {
    on<_SyncOrder>((event, emit) async {
      emit(const _Loading());
      final orderIsSyncFalse =
          await ProductLocalDatasource.instance.getOrdersIsSyncFalse();
      for (final order in orderIsSyncFalse) {
        final orderItems = await ProductLocalDatasource.instance
            .getOrderItemsByIdOrder(order.id!);
        final transactionTimeFormatted = DateFormat('yyyy-MM-dd HH:mm:ss')
            .format(DateTime.parse(order.transactionTime));

        final orderRequest = OrderRequestModel(
          cashierName: order.cashierName,
          paymentAmount: order.nominalPayment,
          transactionTime: transactionTimeFormatted,
          cashierId: order.cashierId,
          totalPrice: order.totalPrice,
          totalItem: order.totalQuantity,
          paymentMethod: order.paymentMethod,
          orderItems: orderItems,
        );

        final response = await _orderRemoteDatasource.sendOrder(orderRequest);

        if (response) {
          await ProductLocalDatasource.instance.updateOrderIsSync(order.id!);
        }
      }
      emit(const _Success());
    });
  }
}

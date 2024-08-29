import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_wisata/data/model/response/product_response_model.dart';
import 'package:go_wisata/presentation/home/bloc/checkout/models/order_item.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc() : super(const _Initial()) {
    on<_AddCheckout>((event, emit) {
      if (state is _Success) {
        final currentState = state as _Success;
        List<OrderItem> products = [...currentState.products];
        final index = products
            .indexWhere((element) => element.product.id == event.product.id);
        if (index >= 0) {
          products[index].quantity += 1;
        } else {
          products.add(OrderItem(product: event.product, quantity: 1));
        }
        emit(const _Loading());
        emit(_Success(products));
      } else {
        emit(_Success([OrderItem(product: event.product, quantity: 1)]));
      }
    });

    on<_RemoveCheckout>((event, emit) {
      if (state is _Success) {
        final currentState = state as _Success;
        List<OrderItem> products = [...currentState.products];
        final index = products
            .indexWhere((element) => element.product.id == event.product.id);
        if (index >= 0) {
          if (products[index].quantity > 1) {
            products[index].quantity -= 1;
          } else {
            products.removeAt(index);
          }
          emit(const _Loading());
          emit(_Success(products));
        }
      }
    });
  }
}

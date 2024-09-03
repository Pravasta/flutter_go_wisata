import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_wisata/data/datasources/product/product_local_datasource.dart';
import 'package:go_wisata/presentation/home/bloc/order/order_bloc.dart';
import 'package:go_wisata/presentation/home/bloc/qris/qris_bloc.dart';
import 'package:go_wisata/presentation/home/bloc/qris_status/qris_status_bloc.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../../../core/core.dart';
import '../bloc/checkout/models/order_item.dart';
import '../bloc/checkout/models/order_model.dart';
import '../pages/payment_success_page.dart';

class PaymentQrisDialog extends StatefulWidget {
  final int price;
  const PaymentQrisDialog({super.key, required this.price});

  @override
  State<PaymentQrisDialog> createState() => _PaymentQrisDialogState();
}

class _PaymentQrisDialogState extends State<PaymentQrisDialog> {
  String orderId = '';
  Timer? timer;

  @override
  void initState() {
    // Ini agar ID nya unik sekali
    orderId = DateTime.now().millisecondsSinceEpoch.toString();
    context
        .read<QrisBloc>()
        .add(QrisEvent.generateQrCode(orderId, widget.price));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Show this QR code to customer'),
          const SpaceHeight(24.0),
          InkWell(
            onTap: () {},
            child: SizedBox(
                height: 200.0,
                width: 200.0,
                child: BlocBuilder<OrderBloc, OrderState>(
                  builder: (context, state) {
                    final (
                      orders,
                      totalQuantity,
                      totalPrice,
                      paymentNominal,
                      paymentMethod,
                      cashierId,
                      cashierName
                    ) = state.maybeWhen(
                      success: (orders,
                              totalQuantity,
                              totalPrice,
                              paymentNominal,
                              paymentMethod,
                              cashierId,
                              cashierName) =>
                          (
                        orders,
                        totalQuantity,
                        totalPrice,
                        paymentNominal,
                        paymentMethod,
                        cashierId,
                        cashierName
                      ),
                      orElse: () => ([], 0, 0, 0, '', '', ''),
                    );

                    return BlocListener<QrisStatusBloc, QrisStatusState>(
                      listener: (context, state) {
                        state.maybeWhen(
                          success: (message) {
                            timer?.cancel();
                            final orderModel = OrderModel(
                              paymentMethod: paymentMethod,
                              nominalPayment: paymentNominal,
                              orders: orders as List<OrderItem>,
                              totalQuantity: totalQuantity,
                              totalPrice: totalPrice,
                              cashierId: cashierId as int,
                              cashierName: cashierName,
                              transactionTime: DateTime.now().toIso8601String(),
                              isSync: false,
                            );

                            ProductLocalDatasource.instance
                                .insertOrder(orderModel);
                            context.pushReplacement(
                                PaymentSuccessPage(orderModel: orderModel));
                          },
                          orElse: () {},
                        );
                      },
                      child: BlocConsumer<QrisBloc, QrisState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            qrisResponse: (qrisResponse) {
                              return Image.network(
                                qrisResponse.actions!.first.url!,
                              );
                            },
                            loading: () => const Center(
                              child: CircularProgressIndicator(),
                            ),
                            orElse: () {
                              return const Center(
                                child: Text('No Data'),
                              );
                            },
                          );
                        },
                        listener: (context, state) {
                          state.maybeWhen(
                            qrisResponse: (qrisResponse) {
                              const onSec = Duration(seconds: 2);
                              timer = Timer.periodic(
                                onSec,
                                (timer) {
                                  context.read<QrisStatusBloc>().add(
                                      QrisStatusEvent.checkPaymentStatus(
                                          qrisResponse.transactionId!));
                                },
                              );
                            },
                            orElse: () {},
                          );
                        },
                      ),
                    );
                  },
                )),
          ),
          const SpaceHeight(24.0),
          Countdown(
            seconds: 60,
            build: (context, time) => Text.rich(
              TextSpan(
                text: 'Update after ',
                children: [
                  TextSpan(
                    text: '${time.toInt()}s.',
                    style: const TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            onFinished: () {},
          ),
        ],
      ),
    );
  }
}

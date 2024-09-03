import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_wisata/presentation/home/bloc/checkout/models/order_item.dart';
import 'package:go_wisata/presentation/home/bloc/order/order_bloc.dart';

import '../../../core/core.dart';
import '../bloc/checkout/checkout_bloc.dart';
import '../dialog/payment_qris_dialog.dart';
import '../dialog/payment_tunai_dialog.dart';
import '../widgets/order_detail_card.dart';
import '../widgets/payment_method_button.dart';

class OrderDetailPage extends StatefulWidget {
  const OrderDetailPage({super.key});

  @override
  State<OrderDetailPage> createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  int totalPrice = 0;
  List<OrderItem> orderItem = [];

  @override
  Widget build(BuildContext context) {
    int paymentButtonIndex = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Pesanan'),
        leading: GestureDetector(
          onTap: () => context.pop(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Assets.images.back.image(),
          ),
        ),
      ),
      body: BlocBuilder<CheckoutBloc, CheckoutState>(
        builder: (context, state) {
          final products = state.maybeWhen(
            success: (products) => products,
            orElse: () => [],
          );

          return ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            itemCount: products.length,
            separatorBuilder: (context, index) => const SpaceHeight(20.0),
            itemBuilder: (context, index) => OrderDetailCard(
              item: products[index],
            ),
          );
        },
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: StatefulBuilder(
              builder: (context, setState) => Row(
                children: [
                  Expanded(
                    child: PaymentMethodButton(
                      iconPath: Assets.icons.payment.qris.path,
                      label: 'QRIS',
                      isActive: paymentButtonIndex == 0,
                      onPressed: () => setState(() => paymentButtonIndex = 0),
                    ),
                  ),
                  const SpaceWidth(20.0),
                  Expanded(
                    child: PaymentMethodButton(
                      iconPath: Assets.icons.payment.tunai.path,
                      label: 'Tunai',
                      isActive: paymentButtonIndex == 1,
                      onPressed: () => setState(() => paymentButtonIndex = 1),
                    ),
                  ),
                  const SpaceWidth(20.0),
                  Expanded(
                    child: PaymentMethodButton(
                      iconPath: Assets.icons.payment.transfer.path,
                      label: 'Transfer',
                      isActive: paymentButtonIndex == 2,
                      onPressed: () => setState(() => paymentButtonIndex = 2),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SpaceHeight(24.0),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 30.0,
                  spreadRadius: 0,
                  offset: const Offset(0, -2),
                  color: AppColors.black.withOpacity(8 / 100),
                  blurStyle: BlurStyle.outer,
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('Order Summary'),
                      BlocBuilder<CheckoutBloc, CheckoutState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            success: (checkout) {
                              orderItem = checkout;
                              final total = checkout.fold<int>(
                                0,
                                (previousValue, element) =>
                                    previousValue +
                                    element.product.price! * element.quantity,
                              );
                              totalPrice = total;

                              return Text(
                                total.currencyFormatRp,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              );
                            },
                            orElse: () => const Text(
                              '0',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Button.filled(
                    onPressed: () {
                      if (paymentButtonIndex == 0) {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              PaymentQrisDialog(price: totalPrice),
                        );
                      } else if (paymentButtonIndex == 1) {
                        context.read<OrderBloc>().add(
                              OrderEvent.addPaymentMethod('Tunai', orderItem),
                            );
                        showDialog(
                          context: context,
                          builder: (context) => PaymentTunaiDialog(
                            totalPrice: totalPrice,
                          ),
                        );
                      }
                    },
                    label: 'Process',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

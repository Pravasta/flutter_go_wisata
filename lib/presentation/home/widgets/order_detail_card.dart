import 'package:flutter/material.dart';
import 'package:go_wisata/presentation/home/bloc/checkout/models/order_item.dart';

import '../../../core/core.dart';

class OrderDetailCard extends StatelessWidget {
  final OrderItem item;
  const OrderDetailCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.stroke),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.product.name ?? '',
            style: const TextStyle(fontSize: 15.0),
          ),
          Text(
            item.product.category?.name ?? '',
            style: const TextStyle(fontSize: 11.0),
          ),
          const SpaceHeight(8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${item.product.price!.currencyFormatRp} x ${item.quantity}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                (item.product.price! * item.quantity).currencyFormatRp,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_wisata/data/model/response/product_response_model.dart';

import '../../../core/core.dart';
import '../dialog/delete_ticket_dialog.dart';
import '../dialog/edit_ticket_dialog.dart';

class TicketCard extends StatelessWidget {
  final Product item;
  const TicketCard({super.key, required this.item});

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
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name ?? '',
                      style: const TextStyle(fontSize: 15.0),
                    ),
                    Text(
                      item.category?.name ?? '',
                      style: const TextStyle(fontSize: 11.0),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => DeleteTicketDialog(id: item.id!),
                  );
                },
                icon: Assets.icons.delete.svg(),
              ),
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => EditTicketDialog(item: item),
                  );
                },
                icon: Assets.icons.edit.svg(),
              ),
            ],
          ),
          const SpaceHeight(8.0),
          Text(
            item.price!.currencyFormatRp,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

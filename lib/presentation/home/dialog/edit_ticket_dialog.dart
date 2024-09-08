import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../../../data/model/response/product_response_model.dart';
import '../bloc/product/product_bloc.dart';

class EditTicketDialog extends StatelessWidget {
  final Product item;
  const EditTicketDialog({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController(text: item.name);
    final priceController = TextEditingController(text: '${item.price}');

    int parseCurrency(String text) =>
        int.tryParse(text.replaceAll(RegExp(r'[^0-9]'), '')) ?? 0;

    priceController.text = parseCurrency(priceController.text).currencyFormatRp;

    return AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          children: [
            const SpaceHeight(8.0),
            CustomTextField(
              controller: nameController,
              label: 'Name',
            ),
            const SpaceHeight(8.0),
            CustomTextField(
              controller: priceController,
              label: 'Harga',
              keyboardType: TextInputType.number,
              onChanged: (value) {
                final parsedValue = parseCurrency(value).currencyFormatRp;
                priceController.value = TextEditingValue(
                  text: parsedValue,
                  selection:
                      TextSelection.collapsed(offset: parsedValue.length),
                );
              },
            ),
            const SpaceHeight(40.0),
            Row(
              children: [
                Flexible(
                  child: Button.filled(
                    onPressed: () => context.pop(),
                    label: 'Batal',
                    borderRadius: 8.0,
                    color: AppColors.buttonCancel,
                    textColor: AppColors.grey,
                  ),
                ),
                const SpaceWidth(40.0),
                Flexible(
                  child: Button.filled(
                    onPressed: () {
                      context.read<ProductBloc>().add(
                            ProductEvent.updateTicket(
                              Product(
                                id: item.id,
                                name: nameController.text,
                                price: parseCurrency(priceController.text),
                              ),
                            ),
                          );
                      context.pop();
                    },
                    label: 'Simpan',
                    borderRadius: 8.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

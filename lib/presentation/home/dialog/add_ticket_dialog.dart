import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_wisata/core/extensions/string_ext.dart';

import '../../../core/core.dart';
import '../../../data/model/response/category_response_model.dart';
import '../../../data/model/response/product_response_model.dart';
import '../bloc/category/category_bloc.dart';
import '../bloc/product/product_bloc.dart';

class AddTicketDialog extends StatefulWidget {
  const AddTicketDialog({super.key});

  @override
  State<AddTicketDialog> createState() => _AddTicketDialogState();
}

class _AddTicketDialogState extends State<AddTicketDialog> {
  final criterias = ['Perorangan', 'Rombongan'];

  late final TextEditingController nameController;
  late final TextEditingController priceController;
  late final ValueNotifier<Category?> categoryNotifier;
  late final ValueNotifier<String> criteriaNotifier;

  int parseCurrency(String text) =>
      int.tryParse(text.replaceAll(RegExp(r'[^0-9]'), '')) ?? 0;

  @override
  void initState() {
    nameController = TextEditingController();
    priceController = TextEditingController();
    categoryNotifier = ValueNotifier<Category?>(null);
    criteriaNotifier = ValueNotifier<String>('Perorangan');

    context.read<CategoryBloc>().add(const CategoryEvent.fetch());
    priceController.text = parseCurrency(priceController.text).currencyFormatRp;
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    priceController.dispose();
    categoryNotifier.dispose();
    criteriaNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            const SpaceHeight(8.0),
            BlocBuilder<CategoryBloc, CategoryState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return const SizedBox();
                  },
                  success: (categories) {
                    final categoryNames = categories
                        .map((category) => category.name)
                        .whereType<String>()
                        .toList();
                    return ValueListenableBuilder(
                      valueListenable: categoryNotifier,
                      builder: (context, value, _) => CustomDropdown(
                        value: value?.name,
                        items: categoryNames,
                        label: 'Kategori',
                        onChanged: (value) {
                          final selectedCategory = categories.firstWhere(
                            (category) => category.name == value,
                          );
                          categoryNotifier.value = selectedCategory;
                        },
                      ),
                    );
                  },
                );
              },
            ),
            const SpaceHeight(8.0),
            ValueListenableBuilder(
              valueListenable: criteriaNotifier,
              builder: (context, value, _) => CustomDropdown(
                value: value,
                items: criterias,
                label: 'Kriteria',
                onChanged: (value) => criteriaNotifier.value = value!,
              ),
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
                  child: BlocConsumer<ProductBloc, ProductState>(
                    listener: (context, state) {
                      state.maybeWhen(
                        success: (product) {
                          context.pop();
                        },
                        orElse: () {},
                      );
                    },
                    builder: (context, state) {
                      return state.maybeWhen(
                        loading: () => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        orElse: () {
                          return Button.filled(
                            onPressed: () {
                              final selectedCategory = categoryNotifier.value;
                              final categoryId = selectedCategory?.id;

                              final Product product = Product(
                                name: nameController.text,
                                price: priceController.text.toIntegerFromText,
                                stock: 100,
                                categoryId: categoryId,
                                criteria: criteriaNotifier.value.toLowerCase(),
                              );

                              context.read<ProductBloc>().add(
                                    ProductEvent.createTicket(product),
                                  );
                            },
                            label: 'Simpan',
                            borderRadius: 8.0,
                          );
                        },
                      );
                    },
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../../../data/datasources/product/product_local_datasource.dart';
import '../../home/bloc/category/category_bloc.dart';
import '../../home/bloc/product/product_bloc.dart';
import '../../home/bloc/sync_order/sync_order_bloc.dart';
import '../widgets/setting_button.dart';
import 'setting_printer_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(24.0),
        crossAxisCount: 2,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 24.0,
        children: [
          SettingButton(
            iconPath: Assets.icons.settings.printer.path,
            title: 'Printer',
            subtitle: 'kelola printer',
            onPressed: () {
              context.push(const SettingPrinterPage());
            },
          ),
          SettingButton(
            iconPath: Assets.icons.settings.logout.path,
            title: 'Logout',
            subtitle: 'keluar dari aplikasi',
            onPressed: () {
              // showDialog(
              //   context: context,
              //   builder: (context) => const LogoutTicketDialog(),
              // );
            },
          ),
          // SYNC CATEGORY
          BlocConsumer<CategoryBloc, CategoryState>(
            listener: (context, state) {
              state.maybeWhen(
                error: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                      backgroundColor: Colors.red,
                    ),
                  );
                },
                success: (categories) {
                  ProductLocalDatasource.instance.removeAllCategory();
                  ProductLocalDatasource.instance.insertAllCategory(categories);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Sync Category Success'),
                      backgroundColor: AppColors.primary,
                    ),
                  );
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                orElse: () {
                  return SettingButton(
                    iconPath: Assets.icons.settings.syncData.path,
                    title: 'Sync Categories',
                    subtitle: 'sinkronasi online',
                    onPressed: () {
                      context
                          .read<CategoryBloc>()
                          .add(const CategoryEvent.fetch());
                    },
                  );
                },
              );
            },
          ),
          // SYNC PRODUCT
          BlocConsumer<ProductBloc, ProductState>(
            listener: (context, state) {
              state.maybeWhen(
                error: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                      backgroundColor: Colors.red,
                    ),
                  );
                },
                success: (products) {
                  ProductLocalDatasource.instance.removeAllProduct();
                  ProductLocalDatasource.instance.insertAllProduct(products);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Sync Product Success'),
                      backgroundColor: AppColors.primary,
                    ),
                  );
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                orElse: () {
                  return SettingButton(
                    iconPath: Assets.icons.settings.syncData.path,
                    title: 'Sync Product',
                    subtitle: 'sinkronasi online',
                    onPressed: () {
                      context
                          .read<ProductBloc>()
                          .add(const ProductEvent.getProducts());
                    },
                  );
                },
              );
            },
          ),
          BlocConsumer<SyncOrderBloc, SyncOrderState>(
            listener: (context, state) {
              state.maybeWhen(
                error: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                      backgroundColor: Colors.red,
                    ),
                  );
                },
                success: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Sync Order Success'),
                      backgroundColor: AppColors.primary,
                    ),
                  );
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                orElse: () {
                  return SettingButton(
                    iconPath: Assets.icons.settings.syncData.path,
                    title: 'Sync Orders',
                    subtitle: 'sinkronasi online',
                    onPressed: () {
                      context
                          .read<SyncOrderBloc>()
                          .add(const SyncOrderEvent.syncOrder());
                    },
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

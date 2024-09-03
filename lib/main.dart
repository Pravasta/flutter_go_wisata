import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_wisata/data/datasources/auth/auth_remote_datasource.dart';
import 'package:go_wisata/data/datasources/midtrans/midtrans_remote_datasource.dart';
import 'package:go_wisata/data/datasources/product/product_local_datasource.dart';
import 'package:go_wisata/data/datasources/product/product_remote_datasource.dart';
import 'package:go_wisata/presentation/auth/bloc/login/login_bloc.dart';
import 'package:go_wisata/presentation/auth/bloc/logout/logout_bloc.dart';
import 'package:go_wisata/presentation/home/bloc/checkout/checkout_bloc.dart';
import 'package:go_wisata/presentation/home/bloc/history/history_bloc.dart';
import 'package:go_wisata/presentation/home/bloc/order/order_bloc.dart';
import 'package:go_wisata/presentation/home/bloc/product/product_bloc.dart';
import 'package:go_wisata/presentation/home/bloc/qris/qris_bloc.dart';
import 'package:go_wisata/presentation/home/bloc/qris_status/qris_status_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/core.dart';
import 'presentation/auth/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginBloc(AuthRemoteDatasource())),
        BlocProvider(create: (context) => LogoutBloc(AuthRemoteDatasource())),
        BlocProvider(
            create: (context) => ProductBloc(
                  ProductRemoteDatasource(),
                  ProductLocalDatasource.instance,
                )..add(const ProductEvent.syncProduct())),
        BlocProvider(create: (context) => CheckoutBloc()),
        BlocProvider(create: (context) => OrderBloc()),
        BlocProvider(
            create: (context) => HistoryBloc(ProductLocalDatasource.instance)),
        BlocProvider(create: (context) => QrisBloc(MidtransRemoteDatasource())),
        BlocProvider(
            create: (context) => QrisStatusBloc(MidtransRemoteDatasource())),
      ],
      child: MaterialApp(
        title: 'Go Wisata',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          dialogTheme: const DialogTheme(elevation: 0),
          textTheme: GoogleFonts.outfitTextTheme(
            Theme.of(context).textTheme,
          ),
          appBarTheme: AppBarTheme(
            color: AppColors.white,
            elevation: 0,
            titleTextStyle: GoogleFonts.outfit(
              color: AppColors.primary,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
            iconTheme: const IconThemeData(
              color: AppColors.black,
            ),
            centerTitle: true,
          ),
        ),
        home: const SplashPage(),
      ),
    );
  }
}

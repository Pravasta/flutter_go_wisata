import 'package:flutter/material.dart';
import 'package:go_wisata/core/core.dart';
import 'package:go_wisata/data/datasources/auth/auth_local_datasource.dart';
import 'package:go_wisata/presentation/home/main_page.dart';

import 'login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Future.delayed(
            const Duration(seconds: 2), () => AuthLocalDatasource().isLogin()),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.data == true) {
              return const MainPage();
            } else {
              return const LoginPage();
            }
          } else {
            return Padding(
              padding: const EdgeInsets.all(96.0),
              child: Center(
                child: Assets.images.logoBlue.image(),
              ),
            );
          }
        },
      ),
    );
  }
}

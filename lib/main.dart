import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fss_ai_app/data/repository/board_repository_impl.dart';
import 'package:fss_ai_app/data/source/remote/board_api.dart';
import 'package:fss_ai_app/lib_color_schemes.g.dart';
import 'package:fss_ai_app/presentation/home_screen.dart';
import 'package:fss_ai_app/presentation/home_view_model.dart';
import 'package:fss_ai_app/presentation/return_pvc.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  HttpOverrides.global = NoCheckCertificateHttpOverrides();

  runApp(
    ChangeNotifierProvider.value(
      value: HomeViewModel(BoardRepositoryImpl(api: BoardApi())),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GOOD.AI',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
      ),
      themeMode: ThemeMode.system,
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => HomeScreen()),
        GetPage(name: "/drivers", page: () => ReturnPvc()),
        //GetPage(name: "/map", page: () => PageMapApp()),
        //GetPage(name: "/para/:ID4", page: () => PageParaApp()),
      ],
      //home: HomeScreen(),
    );
  }
}

class NoCheckCertificateHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

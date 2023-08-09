import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fss_ai_app/data/repository/board_repository_impl.dart';
import 'package:fss_ai_app/data/source/remote/board_api.dart';
import 'package:fss_ai_app/demo/CompanyScreen3.dart';
import 'package:fss_ai_app/demo/DailyScreen3.dart';
import 'package:fss_ai_app/demo/HomeScreen3.dart';
import 'package:fss_ai_app/demo/HomeScreen3Sub1.dart';
import 'package:fss_ai_app/demo/VolumeScreen3.dart';
import 'package:fss_ai_app/lib_color_schemes.g.dart';
import 'package:fss_ai_app/presentation/home_view_model.dart';
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
        // # DEMO
        GetPage(name: "/", page: () => HomeScreen3()),
        GetPage(name: "/CompanyScreen3", page: () => CompanyScreen3()),
        GetPage(name: "/DailyScreen3", page: () => DailyScreen3()),
        GetPage(name: "/VolumeScreen3", page: () => VolumeScreen3()),
        GetPage(name: "/HomeSub1", page: () => HomeScreen3Sub1()),
        // # API Test
        //GetPage(name: "/", page: () => HomeScreen()),
        //GetPage(name: "/drivers", page: () => ReturnPvc()),
        // # GetX Test
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

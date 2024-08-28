import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/App/Routes/app_routes.dart';
import 'package:getx_project/App/Theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      darkTheme: dartTheme,
      theme: ligtTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.intialPage,
      getPages: AppRoutes.routes,
    );
  }
}
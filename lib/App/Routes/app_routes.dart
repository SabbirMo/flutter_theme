

import 'package:get/get.dart';
import 'package:getx_project/App/Module/Home/Binding/home_binding.dart';
import 'package:getx_project/App/Module/Home/View/home_screen.dart';

class AppRoutes {
  static const String intialPage = '/home';

  static final routes = [
    GetPage(name: '/home', page: ()=> const HomeScreen(), binding: HomeBinding())
  ];
}
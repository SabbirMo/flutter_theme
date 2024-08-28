import 'package:get/get.dart';
import 'package:getx_project/App/Module/Home/Controller/home_controller.dart';
import 'package:getx_project/App/Theme/theme_controller.dart';

class HomeBinding  extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    
    Get.lazyPut<ThemeController>(() => ThemeController());
  }
  
}
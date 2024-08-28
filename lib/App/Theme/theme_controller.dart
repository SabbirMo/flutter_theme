
import 'package:get/get.dart';
import 'package:getx_project/App/Theme/app_theme.dart';

class ThemeController  extends GetxController{
  RxBool isSelectTheme = true.obs;

  void changeTheme(bool isMood) {
    Get.changeTheme(isSelectTheme.value ? dartTheme : ligtTheme);
    isSelectTheme.value = isMood;
  }
}
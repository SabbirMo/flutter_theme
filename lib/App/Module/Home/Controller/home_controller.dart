
import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_project/App/Data/Config/user_model.dart';
import 'package:getx_project/App/Data/Constant/api.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {

  Rx<UserModel?> contact = Rx(null);
   Future<UserModel> fatchData() async{
    final response = await http.get(Uri.parse(api));
    try {
      final model = UserModel.fromJson(jsonDecode(response.body));
      contact.value = model;
      return model;
    } catch (e) {
      throw Exception(response.body);
    }
  }
}
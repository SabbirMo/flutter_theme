import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/App/Module/Home/Controller/home_controller.dart';
import 'package:getx_project/App/Theme/theme_controller.dart';
import 'package:getx_project/App/Widget/contact_card.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Refresh Project"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              controller.fatchData();
            },
            icon: const Icon(Icons.refresh),
          ),
          Obx(
            () => Switch(
              value: Get.find<ThemeController>().isSelectTheme.value,
              onChanged: (value) {
                Get.find<ThemeController>().changeTheme(value);
              },
            ),
          )
        ],
      ),
      body: SafeArea(
          child: FutureBuilder(
        future: controller.fatchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Obx(
            () => ListView.builder(
              itemCount: controller.contact.value!.profiles!.length,
              itemBuilder: (context, index) {
                return ContactCard(
                  name: controller.contact.value!.profiles![index].name ?? " ",
                  address:
                      controller.contact.value!.profiles![index].address ?? " ",
                  email:
                      controller.contact.value!.profiles![index].email ?? " ",
                  city: controller.contact.value!.profiles![index].city ?? " ",
                  country:
                      controller.contact.value!.profiles![index].country ?? " ",
                );
              },
            ),
          );
        },
      )),
    );
  }
}

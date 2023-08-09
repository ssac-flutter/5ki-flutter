import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainViewModel extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
    update();

    if (count.isEven) {
      Get.changeTheme(ThemeData.dark());
    } else {
      Get.changeTheme(ThemeData.light());
    }

    Get.showSnackbar(const GetSnackBar(
      title: '테스트',
      message: '테스트',
    ));
  }

}

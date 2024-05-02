import 'dart:async';

import 'package:get/get.dart';

import '../News/News.dart';


class Logocontroller extends GetxController{
  @override
   onInit() async {
    await Timer(Duration(seconds:1), () {
      Get.to(News());
    });
    super.onInit();
  }
}
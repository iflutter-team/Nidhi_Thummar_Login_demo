import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../homescreen.dart';

class LoginController extends GetxController{
  TextEditingController loginemailController = TextEditingController();
  TextEditingController loginpassController = TextEditingController();
  TextEditingController loginnameController = TextEditingController();
  void button(){
    Get.to(HomeScreen());
  }
}
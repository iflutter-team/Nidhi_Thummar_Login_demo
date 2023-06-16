import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login/login_screen.dart';

class SignUpController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  void signButton(){
    Get.to(LoginScreen());
  }
}
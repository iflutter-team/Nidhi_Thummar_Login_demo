import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';
import 'login_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      appBar: loginAppBar(),
      body: Padding(
        padding:  EdgeInsets.only(
            top: 50,left: 15,right: 15
        ),
        child: Column(
          children: [
            emailFeild,
            SizedBox(
              height: 10,
            ),
            passFeild,
            SizedBox(
              height: 30,
            ),
            loginButton

          ],
        ),
      ),
    );
  }
}

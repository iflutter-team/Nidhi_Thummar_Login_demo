import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roshnidmo/screen/signup/signup_controller.dart';
import 'package:roshnidmo/screen/signup/signup_widget.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpController());
    return Scaffold(
      appBar: signAppBAr(),
      body: Padding(
        padding:  EdgeInsets.only(
            top: 50,left: 15,right: 15
        ),
        child: Column(
          children: [
            nameText,
            SizedBox(
              height: 10,
            ),
            emailText,
            SizedBox(
              height: 10,
            ),
            passText,
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roshnidmo/screen/signup/signup_controller.dart';
AppBar signAppBAr (){
  return AppBar(
    centerTitle: true,
    title: Text("SignUp Screen",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
  );
}
Widget emailText = GetBuilder<SignUpController>(builder: (controller) =>TextField(
  controller: controller.emailController,
  decoration: InputDecoration(fillColor: Color(0XFFFFFFFF),filled: true,
      hintText:"Email",
      hintStyle: TextStyle(
          fontSize: Get.height * 0.018,
          fontWeight: FontWeight.w500),
      //isCollapsed: true,
      contentPadding: EdgeInsets.fromLTRB(13, 5.5, 0, 10),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color:Colors.blue,
          width: 1.2,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color:Colors.blue,
          width: 1.5,
        ),
      )),
) );

Widget passText = GetBuilder<SignUpController>(builder: (controller) =>TextField(
  controller: controller.passController,
  decoration: InputDecoration(fillColor: Color(0XFFFFFFFF),filled: true,
      hintText:"Password",
      hintStyle: TextStyle(
          fontSize: Get.height * 0.018,
          fontWeight: FontWeight.w500),
      //isCollapsed: true,
      contentPadding: EdgeInsets.fromLTRB(13, 5.5, 0, 10),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color:Colors.blue,
          width: 1.2,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color:Colors.blue,
          width: 1.5,
        ),
      )),
) );
Widget nameText = GetBuilder<SignUpController>(builder: (controller) =>TextField(
  controller: controller.nameController,
  decoration: InputDecoration(fillColor: Color(0XFFFFFFFF),filled: true,
      hintText:"Name",
      hintStyle: TextStyle(
          fontSize: Get.height * 0.018,
          fontWeight: FontWeight.w500),
      //isCollapsed: true,
      contentPadding: EdgeInsets.fromLTRB(13, 5.5, 0, 10),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color:Colors.blue,
          width: 1.2,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color:Colors.blue,
          width: 1.5,
        ),
      )),
) );

Widget loginButton = GetBuilder<SignUpController>(builder: (controller) => InkWell(
  onTap: ()=>controller.signButton(),
  child:   Container(

    height: 50,

    width: 250,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.blue,),

    child: Center(child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),)),

  ),
) );
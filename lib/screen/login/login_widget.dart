import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

AppBar loginAppBar (){
  return AppBar(
    centerTitle: true,
    title: Text("Login Screen",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
  );
}
Widget emailFeild = GetBuilder<LoginController>(builder: (controller) =>TextField(
  controller: controller.loginemailController,
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
Widget passFeild = GetBuilder<LoginController>(builder: (controller) =>TextField(
  controller: controller.loginpassController,
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

Widget loginButton = GetBuilder<LoginController>(builder: (controller) => InkWell(
  onTap: ()=>controller.button(),
  child:   Container(

    height: 50,

    width: 250,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.blue,),


    child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),)),

  ),
) );
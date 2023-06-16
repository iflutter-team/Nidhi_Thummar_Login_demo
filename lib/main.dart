import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roshnidmo/screen/homescreen.dart';
import 'package:roshnidmo/screen/signup/signup_sreen.dart';

main(){
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    )
  );
}
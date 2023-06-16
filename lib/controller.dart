
import 'package:get/get.dart';
import 'package:roshnidmo/model.dart';
import 'package:roshnidmo/screen/home_screenapi.dart';

import 'model1.dart';

class  HomeController extends GetxController{
  bool isLoad = false;
  List<ImageModel>? imagePhotos;
  Product? productList;
  Future<void>  getImageList() async {
    isLoad = true;
    productList =await HomeScreenApi.getData();
    isLoad=false;
    update (["update"]);
  }


  @override
  void onInit() {
    // TODO: implement onInit
    getImageList();
    super.onInit();
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roshnidmo/controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
          ),
          body: GetBuilder<HomeController>(
            id: 'update',
            builder: (controller) => controller.isLoad
                ? Center(child: CircularProgressIndicator())
                : GridView.builder(
                    itemCount: controller.productList!.products!.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.9, crossAxisCount: 2),
                    itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [BoxShadow(blurRadius: 2)]),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              height: 120,
                              width: 120,
                              child: Image.network(
                                controller
                                    .productList!.products![index].images!.first
                                    .toString(),
                                //  fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            controller.productList!.products![index].title
                                .toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40, top: 10),
                            child: Row(
                              children: [
                                Text(
                                  '\$',
                                  style: TextStyle(color: Colors.orange),
                                ),
                                Text(
                                  controller.productList!.products![index].price
                                      .toString(),
                                  style: TextStyle(color: Colors.orange),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Icon(
                                  Icons.star_rate,
                                  color: Colors.orange,
                                  size: 15,
                                ),
                                Text(
                                  controller
                                      .productList!.products![index].rating
                                      .toString(),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          ),
      ),
    );
  }
}

//ListTile(leading: Image.network(controller.imagePhotos![index].url!),);

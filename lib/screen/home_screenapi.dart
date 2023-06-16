import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:roshnidmo/model.dart';
import 'package:roshnidmo/model1.dart';
import 'package:roshnidmo/services/http.dart';
import 'package:roshnidmo/utils/endpoint_res.dart';

class HomeScreenApi {
  static Future getData() async {
    try {
      http.Response? response =
          await HttpSer.getApi(url: EndPointRes.productsEndPoint);
      if (response != null && response.statusCode == 200) {
        return productFromJson(response.body);
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  addData() {}
}

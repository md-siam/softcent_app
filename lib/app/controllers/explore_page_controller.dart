import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/explore_page_model.dart';

class ProductController extends GetxController {
  var isDataLoading = false.obs;
  ProductModel? productList;

  @override
  void onInit() {
    getProductInfoFromApi();
    super.onInit();
  }

  getProductInfoFromApi() async {
    try {
      isDataLoading(true);
      http.Response response = await http.get(
        Uri.tryParse(
            'https://mocki.io/v1/02e91d9f-4d8c-4eb4-a4f9-bb4a60ffdaf9')!,
      );
      if (response.statusCode == 200) {
        // data successfully received
        //
        var result = jsonDecode(response.body);

        productList = ProductModel.fromJson(result);
      }
    } finally {
      isDataLoading(false);
    }
  }
}

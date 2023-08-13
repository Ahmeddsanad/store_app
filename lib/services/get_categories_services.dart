// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class GetCategoriesServices {
  Future<List<ProductModel>> getCategories(
      {required String CategoryName}) async {
    String BaseURL = 'https://fakestoreapi.com';

    Uri url = Uri.parse('$BaseURL/products/products/category/$CategoryName');

    http.Response response = await http.get(url);

    List<dynamic> data = jsonDecode(response.body);

    List<ProductModel> productList = [];

    for (int i = 0; i < data.length; i++) {
      ProductModel.fromJson(data[i]);
    }

    return productList;
  }
}

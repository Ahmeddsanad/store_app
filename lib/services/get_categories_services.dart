// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class GetCategoriesServices {
  Future<List<ProductModel>> getCategories(
      {required String CategoryName}) async {
    List<dynamic> data = await api()
        .get(url: 'https://fakestoreapi.com/products/category/$CategoryName');

    List<ProductModel> productList = [];

    for (int i = 0; i < data.length; i++) {
      ProductModel.fromJson(data[i]);
    }

    return productList;
  }
}

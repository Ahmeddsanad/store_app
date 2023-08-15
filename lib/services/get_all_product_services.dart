import 'dart:convert';

import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class AllProductsService {
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data =
        await api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> ProductList = [];

    for (int i = 0; i < data.length; i++) {
      ProductList.add(ProductModel.fromJson(data[i]));
    }

    return ProductList;
    // same the above
    // data.forEach(
    //   (element) {
    //     ProductList.add(ProductModel.fromJson(data[element]));
    //   },
    // );
  }
}

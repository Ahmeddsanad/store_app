import 'dart:convert';

import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class AllProductsService {
  Future<List<ProductModel>> getAllProduct() async {
    String BaseURL = 'https://fakestoreapi.com';

    Uri url = Uri.parse('$BaseURL/products');

    http.Response response = await http.get(url);

    List<dynamic> data = jsonDecode(response.body);

    List<ProductModel> ProductList = [];

    for (int i = 0; i < data.length; i++) {
      ProductList.add(ProductModel.fromJson(data[i]));
    }

    // same the above
    // data.forEach(
    //   (element) {
    //     ProductList.add(ProductModel.fromJson(data[element]));
    //   },
    // );

    return ProductList;
  }
}

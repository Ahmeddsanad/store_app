// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> GetCategories() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/categories');

    return data;
  }
}

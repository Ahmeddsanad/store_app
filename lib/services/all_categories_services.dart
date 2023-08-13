// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:http/http.dart' as http;

class AllCategoriesService {
  Future<List<dynamic>> GetCategories() async {
    String BaseURL = 'https://fakestoreapi.com';

    Uri url = Uri.parse('$BaseURL/categories');

    http.Response response = await http.get(url);

    List<dynamic> data = jsonDecode(response.body);

    return data;
  }
}

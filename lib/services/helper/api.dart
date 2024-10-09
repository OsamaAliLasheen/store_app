import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class API {
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Request failed with status: ${response.statusCode}.');
    }
  }

  Future<dynamic> post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};

    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer $token'
      });
    }

    http.Response response =
        await http.post(Uri.parse('https://fakestoreapi.com/products'),
            body: {
              'title': 'test',
              'price': '13.5',
              'description': 'lorem ipsum set',
              'image': 'https://i.pravatar.cc',
              'category': 'electronic'
            },
            headers: headers);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Request failed with status: ${response.statusCode}.');
  }
}

Future<dynamic> put(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};

    headers.addAll({
      "Content-Type": "application/x-www-form-urlencoded",
    })  ;

    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer $token'
      });
    }

    http.Response response =
        await http.post(Uri.parse('https://fakestoreapi.com/products'),
            body: {
              'title': 'test',
              'price': '13.5',
              'description': 'lorem ipsum set',
              'image': 'https://i.pravatar.cc',
              'category': 'electronic'
            },
            headers: headers);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Request failed with status: ${response.statusCode}.');
  }
}

}

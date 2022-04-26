import 'dart:convert';
import 'package:http/http.dart';
import 'package:http_https_products1/model/model_product1.dart';

class Http {
  // URL
  static const String baseUrl = "dummyjson.com";


  // HEADERS
  static Map<String, String> headers = {
    'Content-type': 'application/json; charset=UTF-8',
  };


  // API
  static const String apiProduct = "/products/1"; // {id}


  // METHODS
  static Future<String> GET(String api, Map<String, String> headers) async {
    Uri uri = Uri.http(baseUrl, api);
    Response response = await get(uri, headers: headers);
    if(response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception("Error !");
    }
  }

  static Future<String> POST(String api, Map<String, String> headers, Map<String, dynamic> body) async {
    Uri uri = Uri.http(baseUrl, api);
    Response response = await post(uri, headers: headers, body: jsonEncode(body));
    if(response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception("Error !");
    }
  }

  static Future<String> PUT(String api, Map<String, String> headers, Map<String, dynamic> body) async {
    Uri uri = Uri.http(baseUrl, api);
    Response response = await put(uri, headers: headers, body: jsonEncode(body));
    if(response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception("Error !");
    }
  }

  static Future<String> PATCH(String api, Map<String, String> headers, Map<String, dynamic> body) async {
    Uri uri = Uri.http(baseUrl, api);
    Response response = await patch(uri, headers: headers, body: jsonEncode(body));
    if(response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception("Error !");
    }
  }

  static Future<String> DELETE(String api, Map<String, String> headers) async {
    Uri uri = Uri.http(baseUrl, api);
    Response response = await delete(uri, headers: headers);
    if(response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception("Error !");
    }
  }

  // PARSING
  static Product parseProduct (String result) {
    Map<String, dynamic> json = jsonDecode(result);
    Product product = Product.fromJson(json);
    return product;
  }
}



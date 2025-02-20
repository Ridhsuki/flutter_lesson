// https://fakestoreapi.com/products
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  Future<Map<String, dynamic>> getData(int id) async {
    var response =
        await http.get(Uri.parse('https://fakestoreapi.com/products/$id'));

    if (response.statusCode == 200) {
      print(jsonDecode(response.body)['title']);
    } else {
      print('error');
    }

    return jsonDecode(response.body);
  }

  Future<List> getProducts() async {              
    var response = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
    );

    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
    return jsonDecode(response.body);
  }
}

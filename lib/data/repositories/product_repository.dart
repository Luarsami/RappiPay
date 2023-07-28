import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product_response.dart';

class ProductRepository {
  final apiUrl = Uri.https('dummyjson.com', '/products');

  Future<ProductResponse> fetchProducts() async {
    final response = await http.get(apiUrl);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return ProductResponse.fromJson(data);
    } else {
      throw Exception('Failed to load products');
    }
  }
}

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'product.dart';

class ProductService {
  static const String _baseUrl = 'https://dummyjson.com/products';

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(_baseUrl));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<dynamic> productList = data['products'];
      return productList.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception(
        'Ürünler yüklenemedi (Hata kodu: ${response.statusCode})',
      );
    }
  }
}

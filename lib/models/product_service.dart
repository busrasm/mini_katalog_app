import 'dart:convert';
import 'product.dart';

class ProductService {
  // Gerçek bir API yerine, JSON formatında sabit (simüle edilmiş) veri.
  static const String _simulatedJsonResponse = '''
  {
    "products": [
      {
        "id": 1,
        "title": "Kırmızı Sırt Çantası",
        "description": "Günlük kullanım için şık ve dayanıklı sırt çantası.",
        "price": 45.99,
        "category": "Çanta"
      },
      {
        "id": 2,
        "title": "Mavi Spor Ayakkabı",
        "description": "Rahat taban, nefes alabilir kumaş.",
        "price": 79.50,
        "category": "Ayakkabı"
      },
      {
        "id": 3,
        "title": "Siyah Kol Saati",
        "description": "Klasik tasarım, deri kayış.",
        "price": 120.00,
        "category": "Aksesuar"
      },
      {
        "id": 4,
        "title": "Beyaz Kablosuz Kulaklık",
        "description": "Yüksek ses kalitesi, uzun pil ömrü.",
        "price": 65.00,
        "category": "Elektronik"
      },
      {
        "id": 5,
        "title": "Gri Kapüşonlu Sweatshirt",
        "description": "Yumuşak dokulu, kışlık kumaş.",
        "price": 55.00,
        "category": "Giyim"
      }
    ]
  }
  ''';

  Future<List<Product>> fetchProducts() async {
    // Gerçek bir ağ isteğini simüle etmek için kısa bir gecikme
    await Future.delayed(const Duration(seconds: 1));

    final data = jsonDecode(_simulatedJsonResponse);
    final List<dynamic> productList = data['products'];
    return productList.map((json) => Product.fromJson(json)).toList();
  }
}

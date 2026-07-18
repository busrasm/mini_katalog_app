import 'package:flutter/material.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {
        'title': 'Kırmızı Çanta',
        'description': 'Şık ve dayanıklı.',
        'icon': Icons.shopping_bag,
      },
      {
        'title': 'Mavi Ayakkabı',
        'description': 'Günlük kullanım için ideal.',
        'icon': Icons.checkroom,
      },
      {
        'title': 'Siyah Saat',
        'description': 'Klasik tasarım.',
        'icon': Icons.watch,
      },
      {
        'title': 'Beyaz Kulaklık',
        'description': 'Yüksek ses kalitesi.',
        'icon': Icons.headphones,
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Mini Katalog')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ProductCard(
            title: product['title'],
            description: product['description'],
            icon: product['icon'],
          );
        },
      ),
    );
  }
}

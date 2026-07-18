import 'package:flutter/foundation.dart';
import 'product.dart';

class CartManager {
  // Singleton deseni: uygulama boyunca sadece TEK bir CartManager örneği olur,
  // her yerden aynı sepete erişilir.
  static final CartManager _instance = CartManager._internal();
  factory CartManager() => _instance;
  CartManager._internal();

  final List<Product> _items = [];

  // ValueNotifier, Flutter'ın kendi çekirdek kütüphanesinden gelir (ekstra paket değil).
  // Sepet sayısı değiştiğinde, bunu dinleyen widget'lara otomatik haber verir.
  final ValueNotifier<int> itemCountNotifier = ValueNotifier<int>(0);

  List<Product> get items => _items;
  int get itemCount => _items.length;

  double get totalPrice => _items.fold(0, (sum, item) => sum + item.price);

  void addToCart(Product product) {
    _items.add(product);
    itemCountNotifier.value = _items.length;
  }

  void removeFromCart(Product product) {
    _items.remove(product);
    itemCountNotifier.value = _items.length;
  }
}

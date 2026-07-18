# 🛍️ Mini Katalog App

Flutter ile geliştirilmiş, gerçek bir API'den (dummyjson.com) canlı veri çeken, sepet sistemi içeren mini bir e-ticaret katalog uygulaması.

## 📱 Özellikler

- Ürünleri ızgara (grid) görünümünde listeleme
- Ürün detay sayfası (görsel, fiyat, kategori, açıklama)
- Sepete ürün ekleme / çıkarma
- Toplam tutar hesaplama
- `Provider` ile state yönetimi
- Gerçek zamanlı API entegrasyonu (dummyjson.com)

## 🛠️ Kullanılan Teknolojiler

- **Flutter** & **Dart**
- `http` — API istekleri için
- `provider` — state yönetimi için
- [dummyjson.com](https://dummyjson.com/products) — ürün verisi kaynağı

## 📂 Proje Yapısı

lib/
├── main.dart
├── models/
│   ├── product.dart          # Product veri modeli
│   ├── product_service.dart  # API'den veri çekme servisi
│   └── cart_manager.dart     # Sepet state yönetimi (ChangeNotifier)
├── views/
│   ├── home_screen.dart          # Ana sayfa (ürün ızgarası)
│   ├── product_detail_screen.dart # Ürün detay sayfası
│   └── cart_screen.dart          # Sepet sayfası
└── widgets/
└── product_card.dart      # Yeniden kullanılabilir ürün kartı
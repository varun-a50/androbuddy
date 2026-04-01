import 'package:androbuddy/domain/entities/product.dart';

class ProductModel extends Product {
  ProductModel({
    required super.id,
    required super.title,
    required super.price,
    required super.imageUrl,
    required super.rating,
    required super.inStock,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      price: (json['price'] as num).toDouble(),
      imageUrl: json['imageUrl'],
      rating: (json['rating'] as num).toDouble(),
      inStock: json['inStock'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "price": price,
      "imageUrl": imageUrl,
      "rating": rating,
      "inStock": inStock,
    };
  }
}

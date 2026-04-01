import 'package:androbuddy/domain/entities/product.dart';

abstract class ProductRepository {
  Future<List<Product>> fetchProducts();
  Future<Product> addToCart(int id);
}

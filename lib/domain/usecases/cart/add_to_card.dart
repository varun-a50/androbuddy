import 'package:androbuddy/domain/entities/product.dart';
import 'package:androbuddy/domain/repository/product_repository.dart';

class AddToCard {
  ProductRepository productRepository;

  AddToCard({required this.productRepository});

  Future<Product> call(int id) async {
    return await productRepository.addToCart(id);
  }
}

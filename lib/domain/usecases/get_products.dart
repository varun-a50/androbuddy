import 'package:androbuddy/domain/entities/product.dart';
import 'package:androbuddy/domain/repository/product_repository.dart';

class GetProducts {
  ProductRepository repository;

  GetProducts({required this.repository});

  Future<List<Product>> call() async {
    return await repository.fetchProducts();
  }
}

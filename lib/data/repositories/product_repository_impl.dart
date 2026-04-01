import 'package:androbuddy/data/datasources/product_datasource.dart';
import 'package:androbuddy/domain/entities/product.dart';
import 'package:androbuddy/domain/repository/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductDatasource datasource;

  ProductRepositoryImpl({required this.datasource});

  @override
  Future<List<Product>> fetchProducts() async {
    return await datasource.getProducts();
  }

  @override
  Future<Product> addToCart(int id) async {
    return await datasource.addToCart(id);
  }
}

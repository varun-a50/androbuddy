import 'package:androbuddy/data/models/product_model.dart';
import 'package:androbuddy/domain/entities/product.dart';

abstract class ProductDatasource {
  Future<List<ProductModel>> getProducts();
  Future<ProductModel> addToCart(int id);
}

class ProductDatasourceImpl implements ProductDatasource {
  @override
  Future<List<ProductModel>> getProducts() async {
    // Simulate a network delay
    await Future.delayed(const Duration(seconds: 2));

    // Return a hardcoded list of products
    return [
      ProductModel(
        id: 1,
        title: 'Product 1',
        price: 29.99,
        imageUrl:
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
        rating: 4.5,
        inStock: true,
      ),
      ProductModel(
        id: 2,
        title: 'Product 2',
        price: 49.99,
        imageUrl:
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
        rating: 4.0,
        inStock: false,
      ),
      ProductModel(
        id: 3,
        title: 'Product 3',
        price: 19.99,
        imageUrl:
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
        rating: 3.5,
        inStock: true,
      ),
      ProductModel(
        id: 4,
        title: 'Product 4',
        price: 49.99,
        imageUrl:
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
        rating: 4.0,
        inStock: true,
      ),
      ProductModel(
        id: 5,
        title: 'Product 5',
        price: 49.99,
        imageUrl:
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
        rating: 4.0,
        inStock: true,
      ),
      ProductModel(
        id: 6,
        title: 'Product 6',
        price: 49.99,
        imageUrl:
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
        rating: 4.0,
        inStock: true,
      ),
      ProductModel(
        id: 7,
        title: 'Product 7',
        price: 49.99,
        imageUrl:
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
        rating: 4.0,
        inStock: true,
      ),
      ProductModel(
        id: 8,
        title: 'Product 8',
        price: 49.99,
        imageUrl:
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
        rating: 4.0,
        inStock: true,
      ),

      ProductModel(
        id: 9,
        title: 'Product 9',
        price: 49.99,
        imageUrl:
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
        rating: 4.0,
        inStock: true,
      ),
      ProductModel(
        id: 10,
        title: 'Product 10',
        price: 49.99,
        imageUrl:
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
        rating: 4.0,
        inStock: true,
      ),
      ProductModel(
        id: 11,
        title: 'Product 11',
        price: 49.99,
        imageUrl:
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
        rating: 4.0,
        inStock: false,
      ),
      ProductModel(
        id: 12,
        title: 'Product 12',
        price: 49.99,
        imageUrl:
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
        rating: 4.0,
        inStock: true,
      ),
      ProductModel(
        id: 13,
        title: 'Product 13',
        price: 49.99,
        imageUrl:
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
        rating: 4.0,
        inStock: true,
      ),
      ProductModel(
        id: 14,
        title: 'Product 14',
        price: 49.99,
        imageUrl:
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
        rating: 4.0,
        inStock: false,
      ),
      ProductModel(
        id: 15,
        title: 'Product 15',
        price: 49.99,
        imageUrl:
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
        rating: 4.0,
        inStock: true,
      ),
    ];
  }

  @override
  Future<ProductModel> addToCart(int id) async {
    List items = await getProducts();
    final Product itemTobeAdded =
        items.where((element) => element.id == id).first as Product;
    final newProduct = ProductModel(
      id: itemTobeAdded.id,
      title: itemTobeAdded.title,
      price: itemTobeAdded.price,
      imageUrl: itemTobeAdded.imageUrl,
      rating: itemTobeAdded.rating,
      inStock: itemTobeAdded.inStock,
    );

    print("Product added to cart: ${newProduct.title}");
    return newProduct;
  }
}

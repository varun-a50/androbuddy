import 'package:androbuddy/data/datasources/product_datasource.dart';
import 'package:androbuddy/data/repositories/product_repository_impl.dart';
import 'package:androbuddy/domain/usecases/cart/add_to_card.dart';
import 'package:androbuddy/domain/usecases/get_products.dart';
import 'package:androbuddy/presentation/bloc/cart/cart_bloc.dart';
import 'package:androbuddy/presentation/bloc/cart/cart_event.dart';
import 'package:androbuddy/presentation/bloc/product/product_bloc.dart';
import 'package:androbuddy/presentation/bloc/product/product_event.dart';
import 'package:androbuddy/presentation/screens/product_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  final ProductDatasource productDatasource = ProductDatasourceImpl();
  final productRepository = ProductRepositoryImpl(
    datasource: productDatasource,
  );
  runApp(MyApp(repository: productRepository));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.repository});

  final ProductRepositoryImpl repository;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) =>
                ProductBloc(getProducts: GetProducts(repository: repository))
                  ..add(FetchProducts()),
          ),
          BlocProvider(
            create: (_) =>
                CartBloc(addToCart: AddToCard(productRepository: repository))
                  ..add(FetchCartItems()),
          ),
        ],
        child: const ProductList(),
      ),
    );
  }
}

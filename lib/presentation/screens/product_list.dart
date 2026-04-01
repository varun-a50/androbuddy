import 'package:androbuddy/presentation/bloc/cart/cart_bloc.dart';
import 'package:androbuddy/presentation/bloc/cart/cart_event.dart';
import 'package:androbuddy/presentation/bloc/product/product_bloc.dart';
import 'package:androbuddy/presentation/bloc/product/product_event.dart';
import 'package:androbuddy/presentation/bloc/product/product_state.dart';
import 'package:androbuddy/presentation/screens/cart_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BlocProvider.value(
                    value: context.read<CartBloc>(),
                    child: const CartList(),
                  ),
                ),
              );
            },
            child: Badge(
              label: Text(
                context.watch<CartBloc>().state.products.length.toString(),
              ),
              child: Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          context.read<ProductBloc>().add(FetchProducts());
        },
        child: BlocConsumer<ProductBloc, ProductState>(
          builder: (context, state) {
            if (state is ProductLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is ProductLoaded) {
              return ListView.builder(
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                  final product = state.products[index];
                  return ListTile(
                    leading: Image.network(product.imageUrl),
                    title: Text(product.title),
                    subtitle: Row(
                      children: [
                        Text('\$${product.price}'),
                        Text(
                          product.inStock ? ' In Stock' : ' Out of Stock',
                          style: TextStyle(
                            color: product.inStock ? Colors.green : Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    trailing: Column(
                      children: [
                        Text('Rating: ${product.rating}'),
                        SizedBox(
                          height: 20,
                          child: OutlinedButton(
                            onPressed: () async {
                              context.read<CartBloc>().add(
                                AddItemToCart(product: product),
                              );
                            },
                            child: Text("Add to Cart"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }
            if (state is ProductError) {
              return Center(child: Text(state.message));
            }
            return const Center(child: Text('No products found'));
          },
          listener: (context, state) {},
        ),
      ),
    );
  }
}

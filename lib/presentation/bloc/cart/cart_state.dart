import 'package:androbuddy/domain/entities/product.dart';
import 'package:equatable/equatable.dart';

abstract class CartState extends Equatable {
  List<Product> products;

  CartState({required this.products});
  @override
  List<Object?> get props => [products];
}

class CartInitial extends CartState {
  CartInitial() : super(products: []);
}

class CartLoading extends CartState {
  CartLoading() : super(products: []);
}

class CartLoaded extends CartState {
  CartLoaded({required super.products});

  CartLoaded copyWith(List<Product>? product) {
    return CartLoaded(products: product ?? super.products);
  }

  @override
  List<Object?> get props => [products];
}

class CartError extends CartState {
  final String message;
  CartError({required this.message}) : super(products: []);

  @override
  List<Object?> get props => [message];
}

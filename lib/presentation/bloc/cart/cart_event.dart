import 'package:androbuddy/domain/entities/product.dart';
import 'package:equatable/equatable.dart';

abstract class CartEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchCartItems extends CartEvent {}

class AddItemToCart extends CartEvent {
  final Product product;

  AddItemToCart({required this.product});

  @override
  List<Object?> get props => [product];
}

class LoadAddedProduct extends CartEvent {}

class RemoveFromCart extends CartEvent {
  final int productId;

  RemoveFromCart({required this.productId});

  @override
  List<Object?> get props => [productId];
}

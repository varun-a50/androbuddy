import 'package:androbuddy/domain/usecases/cart/add_to_card.dart';
import 'package:androbuddy/presentation/bloc/cart/cart_event.dart';
import 'package:androbuddy/presentation/bloc/cart/cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final AddToCard addToCart;

  CartBloc({required this.addToCart}) : super(CartInitial()) {
    on<AddItemToCart>((event, emit) async {
      try {
        emit(CartLoading());
        final item = await addToCart(event.product.id);
        print("Item added to cart: ${item.title}");
        emit(CartLoaded(products: [...state.products, item]));
      } catch (e) {
        emit(CartError(message: e.toString()));
      }
    });

    on<FetchCartItems>((event, emit) {
      emit(CartLoading());
      try {
        emit(CartLoaded(products: state.products));
      } catch (e) {
        emit(CartError(message: e.toString()));
      }
    });

    on<RemoveFromCart>((event, emit) {
      emit(CartLoading());
      try {
        final updatedProducts = state.products
            .where((product) => product.id != event.productId)
            .toList();
        emit(CartLoaded(products: updatedProducts));
        add(FetchCartItems());
      } catch (e) {
        emit(CartError(message: e.toString()));
      }
    });
  }
}

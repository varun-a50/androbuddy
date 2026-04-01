import 'package:androbuddy/domain/usecases/get_products.dart';
import 'package:androbuddy/presentation/bloc/product/product_event.dart';
import 'package:androbuddy/presentation/bloc/product/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProducts getProducts;
  ProductBloc({required this.getProducts}) : super(ProductInitial()) {
    on<FetchProducts>((event, emit) async {
      emit(ProductLoading());
      try {
        final products = await getProducts();
        emit(ProductLoaded(products: products));
      } catch (e) {
        emit(ProductError(message: e.toString()));
      }
    });
  }
}

import 'package:bloc/bloc.dart';
import 'package:flutter_explore/api_integration_learn/cubit/product_cubit/product_state.dart';
import 'package:flutter_explore/api_integration_learn/services/product_service.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductState());

  Future<void> getAllProducts() async {
    emit(state.copyWith(isLoading: true));

    var data = await ProductService().getAllProduct();
    data.fold(
      (left) => emit(state.copyWith(error: left, isLoading: false)),
      (right) => emit(state.copyWith(productsData: right, isLoading: false)),
    );

    emit(state.copyWith(isLoading: false));
  }
}

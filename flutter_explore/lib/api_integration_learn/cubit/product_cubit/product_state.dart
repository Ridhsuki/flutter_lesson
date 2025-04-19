import 'package:equatable/equatable.dart';
import 'package:flutter_explore/api_integration_learn/model/product_model/product_model.dart';

class ProductState extends Equatable {
  const ProductState(
      {this.error = '', this.productsData = const [], this.isLoading = true});
  final bool isLoading;
  final List<ProductModel> productsData;
  final String error;
  @override
  List<Object> get props => [isLoading, productsData, error];
  ProductState copyWith({
    bool? isLoading,
    List<ProductModel>? productsData,
    String? error,
  }) {
    return ProductState(
      isLoading: isLoading ?? this.isLoading,
      productsData: productsData ?? this.productsData,
      error: error ?? this.error,
    );
  }
}

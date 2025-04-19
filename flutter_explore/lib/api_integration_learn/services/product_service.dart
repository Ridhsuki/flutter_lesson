import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_explore/api_integration_learn/model/product_model/product_model.dart';

class ProductService {
  final dio = Dio(BaseOptions(connectTimeout: Duration(seconds: 5)));

  Future<Either<String, List<ProductModel>>> getAllProduct() async {
    try {
      var response = await dio.get('https://fakestoreapi.com/products');

      if (response.statusCode == 200) {
        var data = (response.data as List)
            .map((e) => ProductModel.fromMap(e))
            .toList();
        return Right(data);
      } else {
        return Left("Failed to get all Products");
      }
    } on DioException catch (e) {
      return Left('Error: ${e.message}');
    }
  }
}

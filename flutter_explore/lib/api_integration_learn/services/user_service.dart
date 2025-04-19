import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_explore/api_integration_learn/model/user_model/user_model.dart';

class UserService {
  final dio = Dio(BaseOptions(connectTimeout: Duration(seconds: 5)));

  Future<Either<String, List<UserModel>>> getAllUser() async {
    try {
      var response = await dio.get('https://fakestoreapi.com/users');

      if (response.statusCode == 200) {
        var data =
            (response.data as List).map((e) => UserModel.fromMap(e)).toList();
        return Right(data);
      } else {
        return Left("Failed to get all user data");
      }
    } on DioException catch (e) {
      return Left('Error: ${e.message}');
    }
  }

  Future<Either<String, UserModel>> getDetailUser(int id) async {
    try {
      var response = await dio.get('https://fakestoreapi.com/users/$id');

      if (response.statusCode == 200) {
        var data = UserModel.fromMap(response.data);
        return Right(data);
      } else {
        return Left("Failed to get user data");
      }
    } on DioException catch (e) {
      return Left('Error: ${e.message}');
    }
  }
}

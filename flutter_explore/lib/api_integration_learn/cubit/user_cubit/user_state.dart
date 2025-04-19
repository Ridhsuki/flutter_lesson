import 'package:equatable/equatable.dart';
import 'package:flutter_explore/api_integration_learn/model/user_model/user_model.dart';

class UserState extends Equatable {
  const UserState(
      {this.error = '',
      this.isLoading = true,
      this.usersData = const [],
      this.detailUserData = const UserModel()});

  final bool isLoading;
  final List<UserModel> usersData;
  final UserModel detailUserData;
  final String error;

  @override
  List<Object> get props => [isLoading, usersData, error, detailUserData];
  UserState copyWith({
    bool? isLoading,
    List<UserModel>? usersData,
    UserModel? detailUserData,
    String? error,
  }) {
    return UserState(
      isLoading: isLoading ?? this.isLoading,
      usersData: usersData ?? this.usersData,
      detailUserData: detailUserData ?? this.detailUserData,
      error: error ?? this.error,
    );
  }
}

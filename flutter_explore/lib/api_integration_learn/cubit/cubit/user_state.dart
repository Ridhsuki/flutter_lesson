import 'package:equatable/equatable.dart';
import 'package:flutter_explore/api_integration_learn/model/user_model/user_model.dart';

class UserState extends Equatable {
  const UserState(
      {this.error = '',
      this.isLoading = true,
      this.usersdata = const []});

  final bool isLoading;
  final List<UserModel> usersdata;
  final String error;

  @override
  List<Object> get props => [isLoading, usersdata, error];
  UserState copyWith({
    bool? isLoading,
    List<UserModel>? usersdata,
    String? error,
  }) {
    return UserState(
      isLoading: isLoading ?? this.isLoading,
      usersdata: usersdata ?? this.usersdata,
      error: error ?? this.error,
    );
  }
}

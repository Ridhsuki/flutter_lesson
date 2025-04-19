import 'package:bloc/bloc.dart';
import 'package:flutter_explore/api_integration_learn/cubit/user_cubit/user_state.dart';
import 'package:flutter_explore/api_integration_learn/services/user_service.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserState());

  Future<void> getAllUser() async {
    emit(state.copyWith(isLoading: true));

    var data = await UserService().getAllUser();
    data.fold(
      (left) => emit(state.copyWith(error: left, isLoading: false)),
      (right) => emit(state.copyWith(usersData: right, isLoading: false)),
    );

    emit(state.copyWith(isLoading: false));
  }

  Future<void> getDetailUser(int id) async {
    emit(state.copyWith(isLoading: true));

    var data = await UserService().getDetailUser(id);
    data.fold(
      (left) => emit(state.copyWith(error: left, isLoading: false)),
      (right) => emit(state.copyWith(detailUserData: right, isLoading: false)),
    );

    emit(state.copyWith(isLoading: false));
  }
  
}

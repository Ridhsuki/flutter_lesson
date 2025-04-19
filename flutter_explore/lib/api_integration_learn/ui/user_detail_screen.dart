import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_explore/api_integration_learn/cubit/cubit/user_cubit.dart';
import 'package:flutter_explore/api_integration_learn/cubit/cubit/user_state.dart';

class UserDetailScreen extends StatelessWidget {
  const UserDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit()..getDetailUser(),
      child: _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            var user = state.detailUserData;
            return Column(children: [Text(user.toString())]);
          },
        ),
      ),
    );
  }
}

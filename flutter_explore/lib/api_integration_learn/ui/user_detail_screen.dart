import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_explore/api_integration_learn/cubit/cubit/user_cubit.dart';
import 'package:flutter_explore/api_integration_learn/cubit/cubit/user_state.dart';

class UserDetailScreen extends StatelessWidget {
  final int userId;

  const UserDetailScreen({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit()..getDetailUser(userId),
      child: _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back_ios_new_outlined)),
        title: Text('User Detail'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.error != '') {
              return Center(
                child: Text(
                  'Error: ${state.error}',
                  textAlign: TextAlign.center,
                ),
              );
            } else if (state.detailUserData.username?.isEmpty ?? true) {
              return Center(
                child: Text("No User Data"),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        '${state.detailUserData.name?.firstname ?? ''} ${state.detailUserData.name?.lastname ?? ''}'),
                    SizedBox(height: 8),
                    Text(state.detailUserData.username ?? ''),
                    SizedBox(height: 8),
                    Text(state.detailUserData.email ?? ''),
                    SizedBox(height: 8),
                    Text(state.detailUserData.phone.toString()),
                    SizedBox(height: 8),
                    Text(
                        '${state.detailUserData.address?.street ?? ''}, ${state.detailUserData.address?.city ?? ''}'),
                    SizedBox(height: 16),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

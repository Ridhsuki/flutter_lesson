import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_explore/api_integration_learn/cubit/cubit/user_cubit.dart';
import 'package:flutter_explore/api_integration_learn/cubit/cubit/user_state.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit()..getAllUser(),
      child: _Content(),
    );
  }
}

class _Content extends StatefulWidget {
  const _Content();

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
            } else if (state.usersData.isEmpty) {
              return Center(
                child: Text("No User Data"),
              );
            } else {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 14.0),
                      itemCount: state.usersData.length,
                      itemBuilder: (context, index) {
                        final data = state.usersData[index];
                        return ListTile(
                          title: Text(data.username ?? ""),
                          subtitle: Text(data.email ?? ""),
                          onTap: () {
                            Navigator.pushNamed(context, '/user-detail');
                          },
                        );
                      },
                    )
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

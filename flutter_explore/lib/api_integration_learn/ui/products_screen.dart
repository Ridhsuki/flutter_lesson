import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_explore/api_integration_learn/cubit/product_cubit/product_cubit.dart';
import 'package:flutter_explore/api_integration_learn/cubit/product_cubit/product_state.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit()..getAllProducts(),
      child: const _Content(),
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
              icon: Icon(Icons.arrow_back_ios_new_rounded)),
          title: Text("Products"),
          centerTitle: true,
        ),
        body: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if (state.isLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.error != '') {
              return Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text('Error: ${state.error}'),
                ),
              );
            } else if (state.productsData.isEmpty == true) {
              return Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text('No such Products Data'),
                ),
              );
            } else {
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.productsData.length,
                          itemBuilder: (context, index) {
                            final data = state.productsData[index];
                            return ListTile(
                              title: Text(data.title.toString()),
                              onTap: () {
                                Navigator.pushNamed(context, '/product-detail',
                                    arguments: data.id);
                              },
                            );
                          })
                    ],
                  ),
                ),
              );
            }
          },
        ));
  }
}

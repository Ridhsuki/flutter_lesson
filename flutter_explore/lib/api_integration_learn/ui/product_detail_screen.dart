import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_explore/api_integration_learn/cubit/product_cubit/product_cubit.dart';
import 'package:flutter_explore/api_integration_learn/cubit/product_cubit/product_state.dart';

class ProductDetailScreen extends StatelessWidget {
  final int productId;

  const ProductDetailScreen({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit()..getDetailProducts(productId),
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
            icon: Icon(Icons.arrow_back_ios_new_rounded)),
        title: Text("Product Detail"),
        centerTitle: true,
      ),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          if (state.isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.error != '') {
            return Center(
              child: Text('Error: ${state.error}'),
            );
          } else if (state.productData.id == null) {
            return Center(
              child: Text('Can\'t find Product Data'),
            );
          } else {
              return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Image.network(
                  state.productData.image ?? '',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 16),
                Text(
                  state.productData.title ?? 'No Title',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  state.productData.description ?? 'No Description',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  'Price: \$${state.productData.price?.toStringAsFixed(2) ?? '0.00'}',
                  style: TextStyle(fontSize: 16, color: Colors.green),
                ),
                SizedBox(height: 8),
                Text(
                  'Category: ${state.productData.category ?? 'Unknown'}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  'Rating: ${state.productData.rating?.rate?.toStringAsFixed(1) ?? '0.0'} (${state.productData.rating?.count ?? 0} reviews)',
                  style: TextStyle(fontSize: 16),
                ),
                ],
              ),
              );
          }
        },
      ),
    );
  }
}

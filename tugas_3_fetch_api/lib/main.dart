import 'package:flutter/material.dart';
import 'package:tugas_3_fetch_api/products/ui/list_product_screen.dart';
import 'package:tugas_3_fetch_api/products/ui/product_detail_screen.dart';
import 'package:tugas_3_fetch_api/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/list-product': (context) => ListProductScreen(),
        '/detail-product': (context) => ProductDetailScreen(),
      },
    );
  }
}
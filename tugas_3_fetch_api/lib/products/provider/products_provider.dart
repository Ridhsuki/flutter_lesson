import 'package:flutter/widgets.dart';
import 'package:tugas_3_fetch_api/data/api_service.dart';

class ProductsProvider extends ChangeNotifier {
  List data = [];
  bool isLoading = false;

  void getProducts() async {
    isLoading = true;
    notifyListeners();

    data = await ApiService().getProducts();
    notifyListeners();

    isLoading = false;
    notifyListeners();
  }
}

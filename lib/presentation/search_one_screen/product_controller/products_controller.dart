import 'package:ai_measurement/presentation/search_one_screen/fetch_products_model/fetch_products_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/network/dio_api_handler/api_worker.dart';

class ProductsController extends GetxController {
  final searchController = TextEditingController();
  late ApiWorker apiWorker = Get.put(ApiWorker());

  RxList<FetchProductsResponse> fetchProducts = <FetchProductsResponse>[].obs;

  void loadProducts(BuildContext context) async {
    try {
      print("Loading products...");
      var response = await apiWorker.getProducts(context);
      if (response.isNotEmpty) {
        fetchProducts.assignAll(response);
        print("products loaded: ${fetchProducts.length}");
      } else {
        print("No products found.");
      }
    } catch (e) {
      print('Error loading products: $e');
    }
  }

  void searchProductsApi(BuildContext context) async {
    fetchProducts.clear();
    try {
      print("Loading products...");
      var response =
          await apiWorker.searchProduct(context, searchController.text);
      if (response.isNotEmpty) {
        fetchProducts.assignAll(response);
        print("products loaded: ${fetchProducts.length}");
      } else {
        print("No products found.");
      }
    } catch (e) {
      print('Error loading products: $e');
    }
  }
}

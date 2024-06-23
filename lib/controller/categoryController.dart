import 'package:flutter_get_x/dataSource/data.dart';
import 'package:get/get.dart';
import '../models/category.dart';


class Categorycontroller extends GetxController {
  var isLoading = true.obs;
  var items = <Item>[].obs;
  var categories = <cateGory>[].obs;

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  void fetchCategories() async {
    try {
      isLoading(true);
      var fetchedCategories = await apiService.fetchCategories();
      if (fetchedCategories.isNotEmpty) {
        categories.value = fetchedCategories;
        // Flatten the list of items from all categories
        items.value = fetchedCategories.expand((category) => category.items).toList();
      } else {
        print('Failed to fetch categories');
      }
    } catch (e) {
      print('Error fetching categories: $e');
    } finally {
      isLoading(false);
    }
  }

   void updateItemQuantity( itemId,  newQuantity) {
    items.firstWhere((item) => item.id == itemId).selectedQuantity.value = newQuantity;
  }
}


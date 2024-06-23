import 'dart:convert';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:http/http.dart' as http;
import '../dataSource/data.dart';
import '../models/cart.dart';

class CartController extends GetxController {
  
  final apiService _apiService = apiService();
  RxInt quantity = 1.obs;
  var cart = Cart(userId: '', products: [], totalAmount: 0.0).obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void incrementQuantity() {
    quantity.value += 1;
  }

  void decrementQuantity() {
    if (quantity > 1) {
      quantity.value -= 1;
      }
    }

  Future<void> addToCart(String userId, String itemId, int quantity) async {
    try {
      Cart cart = await _apiService.addToCart(userId, itemId, quantity);
      // Optionally handle success response
       Get.snackbar('item added to the cart', '');
      // You can update local state or notify user if needed
    } catch (e) {
      Get.snackbar('Error adding to : $e','');
      // Handle error cases or show error to user
    }
  }

  //var cart = Cart(userId: '', products: []).obs;
  Future<void> fetchCart(String userId) async {
    isLoading(true);
    try {
      final response = await http.get(Uri.parse('$baseUrl/cart/cart/$userId'));
      if (response.statusCode == 200) {
        var jsonResponse = json.decode(response.body);
         print('Response JSON: $jsonResponse');
        cart.value = Cart.fromJson(jsonResponse);
        print('Cart Value: ${cart.value}');
      } else {
        print(response.statusCode);
        throw Exception('Failed to load cart');
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading(false);
    }
  }
  }
  
 


  
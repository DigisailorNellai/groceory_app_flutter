import 'package:get/get.dart';

class ProductController extends GetxController {
  var quantity = 1.obs;

  void increaseQuantity() {
    quantity++;
  }

  void decreaseQuantity() {
    if (quantity > 1) {
      quantity--;
    }
  }
}

import 'dart:convert';
import 'package:http/http.dart' as http;

class Item {
  final String itemId;
  final String itemName;
  final String unit;
  final double price;

  Item({
    required this.itemId,
    required this.itemName,
    required this.unit,
    required this.price,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      itemId: json['_id'] ?? '',
      itemName: json['title'] ?? 'Unknown Item', // Assuming 'title' is the item name field in your API response
      unit: json['unit'] ?? 'Unknown Unit',
      price: (json['price'] ?? 0).toDouble(),
    );
  }
}

class CartItem {
  final Item item;
  final String quantity;  // Change to String to handle "1 kg" format
  final double totalPrice;

  CartItem({
    required this.item,
    required this.quantity,
    required this.totalPrice,
  });

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      item: Item.fromJson(json['item'] ?? {}),
      quantity: json['quantity'] ?? '0 kg', // Directly use the string value
      totalPrice: double.tryParse(json['totalPrice'].toString()) ?? 0.0,
    );
  }
}


class Cart {
  final String userId;
  final List<CartItem> products;
  final double totalAmount;

  Cart({
    required this.userId,
    required this.products,
    required this.totalAmount,
  });

  factory Cart.fromJson(Map<String, dynamic> json) {
    var productsList = json['products'] as List? ?? [];
    List<CartItem> products = productsList.map((i) => CartItem.fromJson(i)).toList();

    return Cart(
      userId: json['userId'] ?? '',
      products: products,
      totalAmount: (json['totalAmount'] ?? 0).toDouble(),
    );
  }
}
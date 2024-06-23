


import 'package:get/get.dart';

class cateGory {
  final String id;
  final String categoryName;
  final String? image;
  final List<Item> items;

  cateGory({ 
    required this.id,
    required this.categoryName,
    required this.image,
    required this.items
  });

 factory cateGory.fromJson(Map<String, dynamic> json) {
    var list = json['items'] as List;
    List<Item> itemsList = list.map((i) => Item.fromJson(i)).toList();

    return cateGory(
      id: json['_id'] ?? '',
      categoryName: json['categoryName'] ?? '',
      image: json['image'] ?? '',
      items: itemsList,
    );
  }
}

class Item {
  final Stock stock;
  final String id;
  final String image;
  final String title;
  final String description;
  final int price;
  final String category;
  final String brand;
  final String unit;
  final selectedQuantity ;

  Item({
    required this.stock,
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.category,
    required this.brand,
    required this.unit,
    this.selectedQuantity=1
    
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      stock: Stock.fromJson(json['stock']),
      id: json['_id'] ?? '',
      image: json['image'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      price: json['price'] ?? 0,
      category: json['category'] ?? '',
      brand: json['brand'] ?? '',
      unit: json['unit'] ?? '',
     
    );
  }
}

class Stock {
  final int lt;
  final int kg;
  final int number;

  Stock({required this.lt, required this.kg, required this.number});

  factory Stock.fromJson(Map<String, dynamic> json) {
    return Stock(
      lt: json['lt'] ?? 0,
      kg: json['kg'] ?? 0,
      number: json['number'] ?? 0,
    );
  }
}
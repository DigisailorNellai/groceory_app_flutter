import 'package:flutter/material.dart';
import 'package:flutter_get_x/controller/cartController.dart';
import 'package:flutter_get_x/controller/categoryController.dart';
import 'package:flutter_get_x/presentation/pages/product_details.dart';
import 'package:flutter_get_x/presentation/pages/widgets/naviagtion.dart';
import 'package:flutter_get_x/services/storageServices.dart';
import 'package:get/get.dart';

import '../../models/category.dart';

class Product_Screen extends StatelessWidget {
  final cateGory category;
  const Product_Screen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    Categorycontroller controller = Get.put(Categorycontroller());
    CartController _cartController = Get.put(CartController());
    
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              category.categoryName,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 11, 96, 166)),
            ),
            Icon(Icons.arrow_drop_down),
            Spacer(),
            Icon(Icons.search),
          ],
        ),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Top Picks',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 18, 123, 208),
                    ),
                  ),
                  SizedBox(height: 20),
                  Obx(() {
                    if (controller.isLoading.value) {
                      return Center(child: CircularProgressIndicator());
                    } else if (controller.items.isEmpty) {
                      return Center(child: Text('Failed to load categories'));
                    } else {
                      final randomItems = controller.items.where((item) => item.category != category.id).toList()..shuffle();
                      return Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: randomItems.length,
                          itemBuilder: (context, index) {
                            final item = randomItems[index];
                            return ListTile(
                              title: Image.asset('assets/Juice.png'),
                              subtitle: Text(item.title),
                            );
                          },
                        ),
                      );
                    }
                  }),
                ],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: 1,
            color: Colors.grey, // Vertical line color
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Obx(() {
                if (controller.isLoading.value) {
                  return Center(child: CircularProgressIndicator());
                } else if (controller.items.isEmpty) {
                  return Center(child: Text('Failed to load categories'));
                } else {
                  final categoryItems = controller.items
                      .where((item) => item.category == category.id)
                      .toList();
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: 2 / 3,
                          ),
                          itemCount: categoryItems.length,
                          itemBuilder: (context, index) {
                            final item = categoryItems[index];
                            return GestureDetector(
                              onTap: () {
                                Get.to(()=> ProductDetails(items: item));
                              },
                              child: Card(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Stack(
                                        children: [
                                          Image.asset('assets/Rectangle 54.png'),
                                          Image.asset('assets/Carrots.png'),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        item.title,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: const Color.fromARGB(255, 12, 106, 183),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '1 ${item.unit}',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Icon(Icons.currency_rupee, size: 13),
                                          Text(
                                            'Price: ${item.price.toStringAsFixed(2)}',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ), 
                                        ],
                                      ),
                                    ),
                                     
                                    SizedBox(height: 5),
                                    // Padding(
                                    //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    //   child: ElevatedButton(
                                    //     onPressed: () {
                                    //       //_cartController.addToCart(userId, item.id, 2);
                                    //     },
                                    //     style: ButtonStyle(
                                    //       backgroundColor: MaterialStateProperty.all(Colors.white),
                                    //       shape: MaterialStateProperty.all(
                                    //         RoundedRectangleBorder(
                                    //           borderRadius: BorderRadius.circular(10),
                                    //         ),
                                    //       ),
                                    //     ),
                                    //     child: Text(
                                    //       'Add To Cart',
                                    //       style: TextStyle(
                                    //         fontWeight: FontWeight.w700,
                                    //         fontSize: 12,
                                    //         color: Colors.red,
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                    // SizedBox(height: 5),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  );
                }
              }),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBarBottom(),
    );
  }
}



 
           

            // Column(
            //   children: [
            //     Row(
            //       children: [
            //         Card(
            //           child: Column(
            //             children: [
            //               GestureDetector(
            //                 onTap: () {
            //                   Get.toNamed('/ProductDetails');
            //                 },
            //                 child: Stack(
            //                   children: [
            //                     Image.asset('assets/Rectangle 54.png'),
            //                     Image.asset('assets/Carrots.png'),
            //                   ],
            //                 ),
            //               ),
            //               SizedBox(
            //                 height: 15,
            //               ),
                          // Text(
                          //   'Fresh Carrot',
                          //   style: TextStyle(
                          //       fontFamily: 'Poppins',
                          //       fontSize: 12,
                          //       fontWeight: FontWeight.w600,
                          //       color: const Color.fromARGB(255, 12, 106, 183)),
                          // ),
                          // SizedBox(
                          //   height: 5,
                          // ),
                          // Row(
                          //   children: [
                          //     Text(
                          //       '1kg/',
                          //       style: TextStyle(
                          //           fontSize: 12, fontWeight: FontWeight.w500),
                          //     ),
                          //     Icon(
                          //       Icons.currency_rupee,
                          //       size: 13,
                          //     ),
                          //     Text(
                          //       '90',
                          //       style: TextStyle(
                          //         fontSize: 12,
                          //         fontWeight: FontWeight.w500,
                          //       ),
                          //     )
                          //   ],
                          // ),
                          // SizedBox(
                          //   height: 5,
                          // ),
                          // ElevatedButton(
                          //     onPressed: () {
                          //       Get.toNamed('/Cart');
                          //     },
                          //     style: ButtonStyle(
                          //         backgroundColor:
                          //             WidgetStatePropertyAll(Colors.white),
                          //         shape: WidgetStatePropertyAll(
                          //             RoundedRectangleBorder(
                          //                 borderRadius:
                          //                     BorderRadius.circular(10)))),
                          //     child: Text(
                          //       'Add To Cart',
                          //       style: TextStyle(
                          //           fontWeight: FontWeight.w700,
                          //           fontSize: 12,
                          //           color: Colors.red),
                          //     )),
            //             ],
            //           ),
            //         ),
            //         Card(
            //           child: Column(
            //             children: [
            //               Stack(
            //                 children: [
            //                   Image.asset('assets/Rectangle 54.png'),
            //                   Image.asset('assets/broccoli.png'),
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 15,
            //               ),
            //               Text(
            //                 'Broccoli',
            //                 style: TextStyle(
            //                     fontFamily: 'Poppins',
            //                     fontSize: 12,
            //                     fontWeight: FontWeight.w600,
            //                     color: const Color.fromARGB(255, 12, 106, 183)),
            //               ),
            //               SizedBox(
            //                 height: 5,
            //               ),
            //               Row(
            //                 children: [
            //                   Text(
            //                     '500g/',
            //                     style: TextStyle(
            //                         fontSize: 12, fontWeight: FontWeight.w500),
            //                   ),
            //                   Icon(
            //                     Icons.currency_rupee,
            //                     size: 13,
            //                   ),
            //                   Text(
            //                     '45',
            //                     style: TextStyle(
            //                       fontSize: 12,
            //                       fontWeight: FontWeight.w500,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 5,
            //               ),
            //               ElevatedButton(
            //                   onPressed: () {},
            //                   style: ButtonStyle(
            //                       backgroundColor:
            //                           WidgetStatePropertyAll(Colors.white),
            //                       shape: WidgetStatePropertyAll(
            //                           RoundedRectangleBorder(
            //                               borderRadius:
            //                                   BorderRadius.circular(10)))),
            //                   child: Text(
            //                     'Add To Cart',
            //                     style: TextStyle(
            //                         fontWeight: FontWeight.w700,
            //                         fontSize: 12,
            //                         color: Colors.red),
            //                   ))
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //     SizedBox(
            //       height: 20,
            //     ),
            //     Row(
            //       children: [
            //         Card(
            //           child: Column(
            //             children: [
            //               Stack(
            //                 children: [
            //                   Image.asset('assets/Rectangle 54.png'),
            //                   Image.asset('assets/capsicum.png'),
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 15,
            //               ),
            //               Text(
            //                 'Capsicum',
            //                 style: TextStyle(
            //                     fontFamily: 'Poppins',
            //                     fontSize: 12,
            //                     fontWeight: FontWeight.w600,
            //                     color: const Color.fromARGB(255, 12, 106, 183)),
            //               ),
            //               SizedBox(
            //                 height: 5,
            //               ),
            //               Row(
            //                 children: [
            //                   Text(
            //                     '250g/',
            //                     style: TextStyle(
            //                         fontSize: 12, fontWeight: FontWeight.w500),
            //                   ),
            //                   Icon(
            //                     Icons.currency_rupee,
            //                     size: 13,
            //                   ),
            //                   Text(
            //                     '25',
            //                     style: TextStyle(
            //                       fontSize: 12,
            //                       fontWeight: FontWeight.w500,
            //                     ),
            //                   )
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 5,
            //               ),
            //               ElevatedButton(
            //                   onPressed: () {},
            //                   style: ButtonStyle(
            //                       backgroundColor:
            //                           WidgetStatePropertyAll(Colors.white),
            //                       shape: WidgetStatePropertyAll(
            //                           RoundedRectangleBorder(
            //                               borderRadius:
            //                                   BorderRadius.circular(10)))),
            //                   child: Text(
            //                     'Add To Cart',
            //                     style: TextStyle(
            //                         fontWeight: FontWeight.w700,
            //                         fontSize: 12,
            //                         color: Colors.red),
            //                   ))
            //             ],
            //           ),
            //         ),
            //         Card(
            //           child: Column(
            //             children: [
            //               Stack(
            //                 children: [
            //                   Image.asset('assets/Rectangle 54.png'),
            //                   Image.asset('assets/potato.png'),
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 15,
            //               ),
            //               Text(
            //                 'Potato',
            //                 style: TextStyle(
            //                     fontFamily: 'Poppins',
            //                     fontSize: 12,
            //                     fontWeight: FontWeight.w600,
            //                     color: const Color.fromARGB(255, 12, 106, 183)),
            //               ),
            //               SizedBox(
            //                 height: 5,
            //               ),
            //               Row(
            //                 children: [
            //                   Text(
            //                     '250g/',
            //                     style: TextStyle(
            //                         fontSize: 12, fontWeight: FontWeight.w500),
            //                   ),
            //                   Icon(
            //                     Icons.currency_rupee,
            //                     size: 13,
            //                   ),
            //                   Text(
            //                     '25',
            //                     style: TextStyle(
            //                       fontSize: 12,
            //                       fontWeight: FontWeight.w500,
            //                     ),
            //                   )
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 5,
            //               ),
            //               ElevatedButton(
            //                   onPressed: () {},
            //                   style: ButtonStyle(
            //                       backgroundColor:
            //                           WidgetStatePropertyAll(Colors.white),
            //                       shape: WidgetStatePropertyAll(
            //                           RoundedRectangleBorder(
            //                               borderRadius:
            //                                   BorderRadius.circular(10)))),
            //                   child: Text(
            //                     'Add To Cart',
            //                     style: TextStyle(
            //                         fontWeight: FontWeight.w700,
            //                         fontSize: 12,
            //                         color: Colors.red),
            //                   ))
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //     SizedBox(
            //       height: 20,
            //     ),
            //     Row(
            //       children: [
            //         Card(
            //           child: Column(
            //             children: [
            //               Stack(
            //                 children: [
            //                   Image.asset('assets/Rectangle 54.png'),
            //                   Image.asset('assets/onion.png'),
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 15,
            //               ),
            //               Text(
            //                 'Onion',
            //                 style: TextStyle(
            //                     fontFamily: 'Poppins',
            //                     fontSize: 12,
            //                     fontWeight: FontWeight.w600,
            //                     color: const Color.fromARGB(255, 12, 106, 183)),
            //               ),
            //               SizedBox(
            //                 height: 5,
            //               ),
            //               Row(
            //                 children: [
            //                   Text(
            //                     '1kg/',
            //                     style: TextStyle(
            //                         fontSize: 12, fontWeight: FontWeight.w500),
            //                   ),
            //                   Icon(
            //                     Icons.currency_rupee,
            //                     size: 13,
            //                   ),
            //                   Text(
            //                     '100',
            //                     style: TextStyle(
            //                       fontSize: 12,
            //                       fontWeight: FontWeight.w500,
            //                     ),
            //                   )
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 5,
            //               ),
            //               ElevatedButton(
            //                   onPressed: () {},
            //                   style: ButtonStyle(
            //                       backgroundColor:
            //                           WidgetStatePropertyAll(Colors.white),
            //                       shape: WidgetStatePropertyAll(
            //                           RoundedRectangleBorder(
            //                               borderRadius:
            //                                   BorderRadius.circular(10)))),
            //                   child: Text(
            //                     'Add To Cart',
            //                     style: TextStyle(
            //                         fontWeight: FontWeight.w700,
            //                         fontSize: 12,
            //                         color: Colors.red),
            //                   ))
            //             ],
            //           ),
            //         ),
            //         Card(
            //           child: Column(
            //             children: [
            //               Stack(
            //                 children: [
            //                   Image.asset('assets/Rectangle 54.png'),
            //                   Image.asset('assets/Ginger.png'),
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 15,
            //               ),
            //               Text(
            //                 'Ginger',
            //                 style: TextStyle(
            //                     fontFamily: 'Poppins',
            //                     fontSize: 12,
            //                     fontWeight: FontWeight.w600,
            //                     color: const Color.fromARGB(255, 12, 106, 183)),
            //               ),
            //               SizedBox(
            //                 height: 5,
            //               ),
            //               Row(
            //                 children: [
            //                   Text(
            //                     '250g/',
            //                     style: TextStyle(
            //                         fontSize: 12, fontWeight: FontWeight.w500),
            //                   ),
            //                   Icon(
            //                     Icons.currency_rupee,
            //                     size: 13,
            //                   ),
            //                   Text(
            //                     '90',
            //                     style: TextStyle(
            //                       fontSize: 12,
            //                       fontWeight: FontWeight.w500,
            //                     ),
            //                   )
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 5,
            //               ),
            //               ElevatedButton(
            //                   onPressed: () {},
            //                   style: ButtonStyle(
            //                       backgroundColor:
            //                           WidgetStatePropertyAll(Colors.white),
            //                       shape: WidgetStatePropertyAll(
            //                           RoundedRectangleBorder(
            //                               borderRadius:
            //                                   BorderRadius.circular(10)))),
            //                   child: Text(
            //                     'Add To Cart',
            //                     style: TextStyle(
            //                         fontWeight: FontWeight.w700,
            //                         fontSize: 12,
            //                         color: Colors.red),
            //                   ))
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //     SizedBox(
            //       height: 20,
            //     ),
            //     Row(
            //       children: [
            //         Card(
            //           child: Column(
            //             children: [
            //               Stack(
            //                 children: [
            //                   Image.asset('assets/Rectangle 54.png'),
            //                   Image.asset('assets/cucumber.png'),
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 15,
            //               ),
            //               Text(
            //                 'Cucumber',
            //                 style: TextStyle(
            //                     fontFamily: 'Poppins',
            //                     fontSize: 12,
            //                     fontWeight: FontWeight.w600,
            //                     color: const Color.fromARGB(255, 12, 106, 183)),
            //               ),
            //               SizedBox(
            //                 height: 5,
            //               ),
            //               Row(
            //                 children: [
            //                   Text(
            //                     '250g/',
            //                     style: TextStyle(
            //                         fontSize: 12, fontWeight: FontWeight.w500),
            //                   ),
            //                   Icon(
            //                     Icons.currency_rupee,
            //                     size: 13,
            //                   ),
            //                   Text(
            //                     '25',
            //                     style: TextStyle(
            //                       fontSize: 12,
            //                       fontWeight: FontWeight.w500,
            //                     ),
            //                   )
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 5,
            //               ),
            //               ElevatedButton(
            //                   onPressed: () {},
            //                   style: ButtonStyle(
            //                       backgroundColor:
            //                           WidgetStatePropertyAll(Colors.white),
            //                       shape: WidgetStatePropertyAll(
            //                           RoundedRectangleBorder(
            //                               borderRadius:
            //                                   BorderRadius.circular(10)))),
            //                   child: Text(
            //                     'Add To Cart',
            //                     style: TextStyle(
            //                         fontWeight: FontWeight.w700,
            //                         fontSize: 12,
            //                         color: Colors.red),
            //                   ))
            //             ],
            //           ),
            //         ),
            //         Card(
            //           child: Column(
            //             children: [
            //               Stack(
            //                 children: [
            //                   Image.asset('assets/Rectangle 54.png'),
            //                   Image.asset('assets/Sweet_Potato.png'),
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 15,
            //               ),
            //               Text(
            //                 'Sweet Potato',
            //                 style: TextStyle(
            //                     fontFamily: 'Poppins',
            //                     fontSize: 12,
            //                     fontWeight: FontWeight.w600,
            //                     color: const Color.fromARGB(255, 12, 106, 183)),
            //               ),
            //               SizedBox(
            //                 height: 5,
            //               ),
            //               Row(
            //                 children: [
            //                   Text(
            //                     '250g/',
            //                     style: TextStyle(
            //                         fontSize: 12, fontWeight: FontWeight.w500),
            //                   ),
            //                   Icon(
            //                     Icons.currency_rupee,
            //                     size: 13,
            //                   ),
            //                   Text(
            //                     '25',
            //                     style: TextStyle(
            //                       fontSize: 12,
            //                       fontWeight: FontWeight.w500,
            //                     ),
            //                   )
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 5,
            //               ),
            //               ElevatedButton(
            //                   onPressed: () {},
            //                   style: ButtonStyle(
            //                       backgroundColor:
            //                           WidgetStatePropertyAll(Colors.white),
            //                       shape: WidgetStatePropertyAll(
            //                           RoundedRectangleBorder(
            //                               borderRadius:
            //                                   BorderRadius.circular(10)))),
            //                   child: Text(
            //                     'Add To Cart',
            //                     style: TextStyle(
            //                         fontWeight: FontWeight.w700,
            //                         fontSize: 12,
            //                         color: Colors.red),
            //                   ))
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //     SizedBox(
            //       height: 20,
            //     ),
            //     Row(
            //       children: [
            //         Card(
            //           child: Column(
            //             children: [
            //               Stack(
            //                 children: [
            //                   Image.asset('assets/Rectangle 54.png'),
            //                   Image.asset('assets/Garlic.png'),
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 15,
            //               ),
            //               Text(
            //                 'Garlic',
            //                 style: TextStyle(
            //                     fontFamily: 'Poppins',
            //                     fontSize: 12,
            //                     fontWeight: FontWeight.w600,
            //                     color: const Color.fromARGB(255, 12, 106, 183)),
            //               ),
            //               SizedBox(
            //                 height: 5,
            //               ),
            //               Row(
            //                 children: [
            //                   Text(
            //                     '1kg/',
            //                     style: TextStyle(
            //                         fontSize: 12, fontWeight: FontWeight.w500),
            //                   ),
            //                   Icon(
            //                     Icons.currency_rupee,
            //                     size: 13,
            //                   ),
            //                   Text(
            //                     '300',
            //                     style: TextStyle(
            //                       fontSize: 12,
            //                       fontWeight: FontWeight.w500,
            //                     ),
            //                   )
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 5,
            //               ),
            //               ElevatedButton(
            //                   onPressed: () {},
            //                   style: ButtonStyle(
            //                       backgroundColor:
            //                           WidgetStatePropertyAll(Colors.white),
            //                       shape: WidgetStatePropertyAll(
            //                           RoundedRectangleBorder(
            //                               borderRadius:
            //                                   BorderRadius.circular(10)))),
            //                   child: Text(
            //                     'Add To Cart',
            //                     style: TextStyle(
            //                         fontWeight: FontWeight.w700,
            //                         fontSize: 12,
            //                         color: Colors.red),
            //                   ))
            //             ],
            //           ),
            //         ),
            //         Card(
            //           child: Column(
            //             children: [
            //               Stack(
            //                 children: [
            //                   Image.asset('assets/Rectangle 54.png'),
            //                   Image.asset('assets/peas.png'),
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 15,
            //               ),
            //               Text(
            //                 'Green Peas',
            //                 style: TextStyle(
            //                     fontFamily: 'Poppins',
            //                     fontSize: 12,
            //                     fontWeight: FontWeight.w600,
            //                     color: const Color.fromARGB(255, 12, 106, 183)),
            //               ),
            //               SizedBox(
            //                 height: 5,
            //               ),
            //               Row(
            //                 children: [
            //                   Text(
            //                     '500g/',
            //                     style: TextStyle(
            //                         fontSize: 12, fontWeight: FontWeight.w500),
            //                   ),
            //                   Icon(
            //                     Icons.currency_rupee,
            //                     size: 13,
            //                   ),
            //                   Text(
            //                     '30',
            //                     style: TextStyle(
            //                       fontSize: 12,
            //                       fontWeight: FontWeight.w500,
            //                     ),
            //                   )
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 5,
            //               ),
            //               ElevatedButton(
            //                   onPressed: () {},
            //                   style: ButtonStyle(
            //                       backgroundColor:
            //                           WidgetStatePropertyAll(Colors.white),
            //                       shape: WidgetStatePropertyAll(
            //                           RoundedRectangleBorder(
            //                               borderRadius:
            //                                   BorderRadius.circular(10)))),
            //                   child: Text(
            //                     'Add To Cart',
            //                     style: TextStyle(
            //                         fontWeight: FontWeight.w700,
            //                         fontSize: 12,
            //                         color: Colors.red),
            //                   ))
            //             ],
            //           ),
            //         ),
                  
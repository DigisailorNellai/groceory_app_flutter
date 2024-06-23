import 'package:flutter/material.dart';
import 'package:flutter_get_x/controller/cartController.dart';
import 'package:get/get.dart';

import '../../models/category.dart';
import '../../services/storageServices.dart';

class ProductDetails extends StatelessWidget {
  final Item items;
  const ProductDetails({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    
    CartController controller = Get.put(CartController());
    return Scaffold(
      body: Stack(
        children: [
          AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.65,
            child: Image.asset(
              'assets/Rectangle 64.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.55,
            left: 0,
            right: 0,
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items.title,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 244, 120, 54)),
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        children: [
                          Icon(
                            Icons.currency_rupee,
                            size: 25,
                          ),
                          Text(
                            'Price: ${items.price.toStringAsFixed(2)}',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 244, 120, 54)),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            items.description,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          // Text(
                          //   'carrots provide highest content of vitamin A',
                          //   style: TextStyle(
                          //     fontFamily: 'Poppins',
                          //     fontSize: 13,
                          //     fontWeight: FontWeight.w300,
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 7,
                          // ),
                          // Text(
                          //   'it is crunchy,tatsty and high nutritious',
                          //   style: TextStyle(
                          //     fontFamily: 'Poppins',
                          //     fontSize: 13,
                          //     fontWeight: FontWeight.w300,
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 7,
                          // ),
                          // Text(
                          //   'They are Good Source of Fiber,Potassium',
                          //   style: TextStyle(
                          //     fontFamily: 'Poppins',
                          //     fontSize: 13,
                          //     fontWeight: FontWeight.w300,
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 17,
                          // ),
                          // Text(
                          //   'Nutrition',
                          //   style: TextStyle(
                          //     fontFamily: 'Poppins',
                          //     fontWeight: FontWeight.w600,
                          //     fontSize: 16,
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 17,
                          // ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //   children: [
                          //     Card(
                          //       child: Container(
                          //           width: 62,
                          //           height: 40,
                          //           child: Center(
                          //             child: Text(
                          //               '88%\nWater',
                          //               style: TextStyle(
                          //                   fontFamily: 'Poppins',
                          //                   fontSize: 12,
                          //                   fontWeight: FontWeight.w300),
                          //             ),
                          //           )),
                          //     ),
                          //     Card(
                          //       child: Container(
                          //           width: 62,
                          //           height: 40,
                          //           child: Center(
                          //             child: Text(
                          //               '0.9%\nProtien',
                          //               style: TextStyle(
                          //                   fontFamily: 'Poppins',
                          //                   fontSize: 12,
                          //                   fontWeight: FontWeight.w300),
                          //             ),
                          //           )),
                          //     ),
                          //     Card(
                          //       child: Container(
                          //           width: 62,
                          //           height: 40,
                          //           child: Center(
                          //             child: Text(
                          //               '28%\nFiber',
                          //               style: TextStyle(
                          //                   fontFamily: 'Poppins',
                          //                   fontSize: 12,
                          //                   fontWeight: FontWeight.w300),
                          //             ),
                          //           )),
                          //     ),
                          //     Card(
                          //       child: Container(
                          //           width: 62,
                          //           height: 40,
                          //           child: Center(
                          //             child: Text(
                          //               '0.2%\nFat',
                          //               style: TextStyle(
                          //                   fontFamily: 'Poppins',
                          //                   fontSize: 12,
                          //                   fontWeight: FontWeight.w300),
                          //             ),
                          //           )),
                          //     ),
                          //   ],
                          // ),
                          // SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  width: 145,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Card(
                                      elevation: 10,
                                      color: Colors.red,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Row(
                                            children: [
                                              IconButton(
                                                  onPressed: controller.decrementQuantity,
                                                  icon: Icon(
                                                    Icons
                                                        .remove_circle_outlined,
                                                    size: 20,
                                                    color: const Color.fromARGB(
                                                        255, 94, 221, 98),
                                                  )),
                                                  Obx((){
                                                     return Text(
                                                '${controller.quantity.value} ${items.unit}',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.normal,
                                                    color: Colors.white),
                                              );
                                                  }),
                                              
                                              IconButton(
                                                  onPressed: controller.incrementQuantity,
                                                  icon: Icon(
                                                    Icons.add_circle_outlined,
                                                    size: 20,
                                                    color: const Color.fromARGB(
                                                        255, 94, 221, 98),
                                                  ))
                                            ],
                                          )))),
                              SizedBox(
                                width: 50,
                              ),
                              Container(
                                height: 40,
                                width: 145,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Card(
                                      elevation: 10,
                                      color: Colors.red,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child:ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          WidgetStatePropertyAll(Colors.red)),
                                   onPressed: () async {
                                        StorageService service = StorageService();
                                        String? userId = await service.readUserId(); 
                                                    if (userId != null) {
                                                    controller.addToCart(userId, items.id, controller.quantity.value);
                                                    print(controller.quantity.value);
                                                  } else {
                                                    // Handle the case where userId is not available
                                                    print("User ID not found");
                                                  }
                                      },
                                  child: Text(
                                    'Add Cart',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ))
                              )
                              
                          ))],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class ProductDetails extends StatefulWidget {
  
//   const ProductDetails({Key? key}) : super(key: key);

//   @override
//   _ProductDetailsState createState() => _ProductDetailsState();
// }

// class _ProductDetailsState extends State<ProductDetails> {
//   late final Item items;
  
  // int quantity = 1;

  // void incrementQuantity() {
  //   setState(() {
  //     quantity++;
  //   });
  // }

  // void decrementQuantity() {
  //   if (quantity > 1) {
  //     setState(() {
  //       quantity--;
  //     });
  //   }
  // }

  

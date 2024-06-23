import 'package:flutter/material.dart';
import 'package:flutter_get_x/controller/auth_controller.dart';
import 'package:get/get.dart';
import 'widgets/naviagtion.dart';

class Main_Page extends StatelessWidget {
  const Main_Page({super.key});
  @override
  Widget build(BuildContext context) {
    AuthController controller = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          Text(
            'Delivery\n Chennai,Tamil nadu',
            style: TextStyle(
                fontFamily: 'Montserrat_Alternates',
                fontSize: 13,
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 3, 92, 165)),
          ),
          Icon(Icons.arrow_drop_down),
          SizedBox(
            width: 90,
          ),
          Image.asset('assets/Ellipse 1.jpg')
        ]),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/Rectangle 7.png'),
                        Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              top: 10,
                            ),
                            child: Text(
                              'ORDER\nAGAIN',
                              style: TextStyle(
                                  fontFamily: 'Montserrat_Alternates',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 90, top: 10),
                          child: Image.asset('assets/Vegetable.png'),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Stack(
                      children: [
                        Image.asset('assets/Rectangle 8.png'),
                        Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                              top: 10,
                            ),
                            child: Text(
                              'LOCAL\nSHOP',
                              style: TextStyle(
                                  fontFamily: 'Montserrat_Alternates',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black),
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 80, top: 10),
                          child: Image.asset('assets/Cafe.png'),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(children: [
                  Container(
                    height: 200,
                    child: Image.asset(
                      'assets/Rectangle 8 (1).png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'HOTSALE',
                              style: TextStyle(
                                  fontFamily: 'Montserrat_Alternates',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'Get Upto 20% Off\nOn Your First Order',
                              style: TextStyle(
                                  fontFamily: 'Montserrat_Alternates',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                            Colors.green)),
                                    child: Text(
                                      'shop now',
                                      style: TextStyle(color: Colors.black),
                                    )),
                                Image.asset('assets/groceries.png')
                              ],
                            )
                          ])),
                ]),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Shop By Category',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap: (){
                          controller.logout();
                        },
                        child: Column(children: [
                      Stack(
                        children: [
                          Image.asset('assets/Rectangle 10.png'),
                          Positioned(
                            top: 12,
                            left: 12,
                            child: Image.asset('assets/Food.png'),
                          ),
                        ],
                      ),
                    ]),
                    ),
                    GestureDetector(
                      onTap: (){                  
                      },
                      child: Column(children: [
                      Stack(
                        children: [
                          Image.asset('assets/Rectangle 10.png'),
                          Positioned(
                            top: 12,
                            left: 12,
                            child: Image.asset('assets/Fruit.png'),
                          ),
                        ],
                      ),
                    ]),
                    ),
                    GestureDetector(
                      onTap: (){
                      },
                      child: Column(children: [
                      Stack(
                        children: [
                          Image.asset('assets/Rectangle 10.png'),
                          Positioned(
                            top: 12,
                            left: 12,
                            child: Image.asset('assets/Chicken (1).png'),
                          ),
                        ],
                      ),
                    ]),
                    ),                 
                    GestureDetector(
                      onTap: () {
                        Get.toNamed('/category');
                      },
                      child: Column(children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/Rectangle 10.png',
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              top: 12,
                              left: 12,
                              child: Image.asset('assets/Fruit.png'),
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              bottom: 0,
                              child: Container(
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            Positioned(
                              top: 12,
                              left: 12,
                              child: Text(
                                'See\nMore',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            )
                          ],
                        )
                      ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Veggie',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Fruits',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Meat',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Today\'s Offer',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/Group 6.png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/Group 4.png'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset('assets/Group 7.png'),
                    SizedBox(
                      width: 30,
                    ),
                    Image.asset('assets/Group 5.png')
                  ],
                )
              ]),
        ),
      ),
      bottomNavigationBar: NavigationBarBottom(),
    );
  }
}



// class Main_Page extends StatelessWidget {
//    Main_Page({super.key});
   
 
  
//   @override
//   Widget build(BuildContext context) {
//     //MainPageController controller = Get.put(MainPageController());
    // return Scaffold(
    //     appBar: AppBar(
    //     title: Row(children: [
    //       const Text(
    //         'Delivery\n Chennai,Tamil nadu',
    //         style: TextStyle(
    //             fontFamily: 'Montserrat_Alternates',
    //             fontSize: 13,
    //             fontWeight: FontWeight.w900,
    //             color: Color.fromARGB(255, 3, 92, 165)),
    //       ),
    //       const Icon(Icons.arrow_drop_down),
    //       const SizedBox(
    //         width: 90,
    //       ),
    //       Image.asset('assets/Ellipse 1.jpg')
    //     ]),
    //   ),
    //   body: SingleChildScrollView(
    //     child: Padding(padding:  const EdgeInsets.all(20),
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.start,
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //          Row(
    //               children: [
    //                 Stack(
    //                   children: [
    //                     Image.asset('assets/Rectangle 7.png'),
    //                     const Padding(
    //                         padding: EdgeInsets.only(
    //                           left: 20,
    //                           top: 10,
    //                         ),
    //                         child: Text(
    //                           'ORDER\nAGAIN',
    //                           style: TextStyle(
    //                               fontFamily: 'Montserrat_Alternates',
    //                               fontSize: 16,
    //                               fontWeight: FontWeight.w900,
    //                               color: Colors.black),
    //                         )),
    //                     Padding(
    //                       padding: const EdgeInsets.only(left: 90, top: 10),
    //                       child: Image.asset('assets/Vegetable.png'),
    //                     )
    //                   ],
    //                 ),
    //                 const SizedBox(
    //                   width: 35,
    //                 ),
    //                 Stack(
    //                   children: [
    //                     Image.asset('assets/Rectangle 8.png'),
    //                     const Padding(
    //                         padding: EdgeInsets.only(
    //                           left: 10,
    //                           top: 10,
    //                         ),
    //                         child: Text(
    //                           'LOCAL\nSHOP',
    //                           style: TextStyle(
    //                               fontFamily: 'Montserrat_Alternates',
    //                               fontSize: 18,
    //                               fontWeight: FontWeight.w900,
    //                               color: Colors.black),
    //                         )),
    //                     Padding(
    //                       padding: EdgeInsets.only(left: 80, top: 10),
    //                       child: Image.asset('assets/Cafe.png'),
    //                     ),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //             const SizedBox(
    //               height: 20,
    //             ),
    //             Stack(children: [
    //               Container(
    //                 height: 200,
    //                 child: Image.asset(
    //                   'assets/Rectangle 8 (1).png',
    //                   fit: BoxFit.cover,
    //                 ),
    //               ),
    //               Padding(
    //                   padding: EdgeInsets.all(20),
    //                   child: Column(
    //                       mainAxisAlignment: MainAxisAlignment.start,
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         const Text(
    //                           'HOTSALE',
    //                           style: TextStyle(
    //                               fontFamily: 'Montserrat_Alternates',
    //                               fontSize: 12,
    //                               fontWeight: FontWeight.w900),
    //                         ),
    //                         const Text(
    //                           'Get Upto 20% Off\nOn Your First Order',
    //                           style: TextStyle(
    //                               fontFamily: 'Montserrat_Alternates',
    //                               fontSize: 15,
    //                               fontWeight: FontWeight.w700),
    //                         ),
    //                         Row(
    //                           children: [
    //                             ElevatedButton(
    //                                 onPressed: () {},
    //                                 style: const ButtonStyle(
    //                                     backgroundColor: WidgetStatePropertyAll(
    //                                         Colors.green)),
    //                                 child: const Text(
    //                                   'shop now',
    //                                   style: TextStyle(color: Colors.black),
    //                                 )),
    //                             Image.asset('assets/groceries.png')
    //                           ],
    //                         )
    //                       ])),
    //             ]),
    //             const SizedBox(
    //               height: 15,
    //             ),
    //             const Text(
    //               'Shop By Category',
    //               style: TextStyle(
    //                   fontFamily: 'Poppins',
    //                   fontSize: 15,
    //                   fontWeight: FontWeight.bold),
    //             ),
    //             const SizedBox(
    //               height: 10,
    //             ),
//   FutureBuilder(
//     future: categories.fetchCategories(),
//     builder: (context, snapshot) {
//     if (snapshot.connectionState == ConnectionState.waiting) {
//       return Center(child: CircularProgressIndicator());
//     } else if (snapshot.hasError) {
//       return Center(child: Text('Error: ${snapshot.error}'));
//     } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//       return Center(child: Text('No categories found'));
//     } else {
//      //List<Category> categoriesToShow = snapshot.data!.take(2).;      
//        Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: snapshot.data!.map((cateGory) {
//           return GestureDetector(
//             onTap: () {    
//               Get.to(() => Product_Screen());        
//             },
//             child: Column(
//               children: [
//                 if(cateGory.image != null)
//                     Image.network(cateGory.image!),
//                 if (cateGory.categoryName != null)
//                     Text(cateGory.categoryName!),
//               ],
//             ),
//           );
//         }).toList()
//       );
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: snapshot.data!.map((cateGory) {
//           return GestureDetector(
//             onTap: () {    
//               Get.to(() => ProductDetails());        
//             },
//             child: Column(
//               children: [
//                 if(cateGory.image != null)
//                     Image.network(cateGory.image!),
//                 if (cateGory.categoryName != null)
//                     Text(cateGory.categoryName!),
//               ],
//             ),
//           );
//         }).toList()
//       );
//     }
//   },
// )
//           ],
//         ),
//         ),
//       ),
//     );
//   }
// }
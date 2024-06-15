import 'package:flutter/material.dart';
import 'package:flutter_get_x/presentation/pages/widgets/naviagtion.dart';
import 'package:get/get.dart';

class Product_Screen extends StatelessWidget {
  const Product_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Vegetables',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 11, 96, 166)),
            ),
            Icon(Icons.arrow_drop_down),
            SizedBox(
              width: 150,
            ),
            Icon(Icons.search),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(children: [
            Expanded(
                child: Container(
              color: Colors.grey,
              height: 1300,
              width: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Top Picks',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 18, 123, 208)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset('assets/fresh vegtables.png'),
                  Text(
                    'All Vegetables',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset('assets/Juice.png'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Fresh Juice',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset('assets/spices.png'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Spices',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset('assets/dry fruits.png'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Dry Fruits',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset('assets/oreo.png'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Oreo',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset('assets/download (15) 1.png'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Organic Product',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset('assets/toys.png'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Toys',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset('assets/Dates.png'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Dates',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset('assets/oils.png'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Oil Products',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset('assets/Dairy.png'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Milk Products',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset('assets/eggs.png'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Eggs',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset('assets/pet care.png'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Pet Care',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            )),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Card(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed('/ProductDetails');
                            },
                            child: Stack(
                              children: [
                                Image.asset('assets/Rectangle 54.png'),
                                Image.asset('assets/Carrots.png'),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Fresh Carrot',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 12, 106, 183)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '1kg/',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.currency_rupee,
                                size: 13,
                              ),
                              Text(
                                '90',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Get.toNamed('/Cart');
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.white),
                                  shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              child: Text(
                                'Add To Cart',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Colors.red),
                              )),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset('assets/Rectangle 54.png'),
                              Image.asset('assets/broccoli.png'),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Broccoli',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 12, 106, 183)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '500g/',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.currency_rupee,
                                size: 13,
                              ),
                              Text(
                                '45',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.white),
                                  shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              child: Text(
                                'Add To Cart',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Colors.red),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset('assets/Rectangle 54.png'),
                              Image.asset('assets/capsicum.png'),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Capsicum',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 12, 106, 183)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '250g/',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.currency_rupee,
                                size: 13,
                              ),
                              Text(
                                '25',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.white),
                                  shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              child: Text(
                                'Add To Cart',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Colors.red),
                              ))
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset('assets/Rectangle 54.png'),
                              Image.asset('assets/potato.png'),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Potato',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 12, 106, 183)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '250g/',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.currency_rupee,
                                size: 13,
                              ),
                              Text(
                                '25',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.white),
                                  shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              child: Text(
                                'Add To Cart',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Colors.red),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset('assets/Rectangle 54.png'),
                              Image.asset('assets/onion.png'),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Onion',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 12, 106, 183)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '1kg/',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.currency_rupee,
                                size: 13,
                              ),
                              Text(
                                '100',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.white),
                                  shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              child: Text(
                                'Add To Cart',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Colors.red),
                              ))
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset('assets/Rectangle 54.png'),
                              Image.asset('assets/Ginger.png'),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Ginger',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 12, 106, 183)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '250g/',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.currency_rupee,
                                size: 13,
                              ),
                              Text(
                                '90',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.white),
                                  shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              child: Text(
                                'Add To Cart',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Colors.red),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset('assets/Rectangle 54.png'),
                              Image.asset('assets/cucumber.png'),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Cucumber',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 12, 106, 183)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '250g/',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.currency_rupee,
                                size: 13,
                              ),
                              Text(
                                '25',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.white),
                                  shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              child: Text(
                                'Add To Cart',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Colors.red),
                              ))
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset('assets/Rectangle 54.png'),
                              Image.asset('assets/Sweet_Potato.png'),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Sweet Potato',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 12, 106, 183)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '250g/',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.currency_rupee,
                                size: 13,
                              ),
                              Text(
                                '25',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.white),
                                  shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              child: Text(
                                'Add To Cart',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Colors.red),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset('assets/Rectangle 54.png'),
                              Image.asset('assets/Garlic.png'),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Garlic',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 12, 106, 183)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '1kg/',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.currency_rupee,
                                size: 13,
                              ),
                              Text(
                                '300',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.white),
                                  shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              child: Text(
                                'Add To Cart',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Colors.red),
                              ))
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset('assets/Rectangle 54.png'),
                              Image.asset('assets/peas.png'),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Green Peas',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 12, 106, 183)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '500g/',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.currency_rupee,
                                size: 13,
                              ),
                              Text(
                                '30',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.white),
                                  shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              child: Text(
                                'Add To Cart',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                    color: Colors.red),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
      bottomNavigationBar: NavigationBarBottom(),
    );
  }
}

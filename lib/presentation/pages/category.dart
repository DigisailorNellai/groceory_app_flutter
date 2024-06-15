import 'package:flutter/material.dart';
import 'package:flutter_get_x/presentation/pages/widgets/naviagtion.dart';
import 'package:get/get.dart';

class category extends StatelessWidget {
  const category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                        top: 30,
                        left: 13,
                      ),
                      child: Text(
                        'Select a Category',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 7, 89, 157)),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/Product_Screen');
                          },
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset('assets/Rectangle 20.png'),
                                  SizedBox(
                                      height: 70,
                                      width: 70,
                                      child: Image.asset('assets/Food.png')),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Veggie',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset('assets/Rectangle 21.png'),
                                  SizedBox(
                                      height: 70,
                                      width: 70,
                                      child: Image.asset('assets/Fruit.png')),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Fruits',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset('assets/Rectangle 22.png'),
                                  SizedBox(
                                      height: 70,
                                      width: 70,
                                      child: Image.asset(
                                          'assets/Chicken (1).png')),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Meat',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset('assets/Rectangle 23.png'),
                                  SizedBox(
                                      height: 70,
                                      width: 70,
                                      child:
                                          Image.asset('assets/Medicine.png')),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Medicine',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset('assets/Rectangle 20.png'),
                                SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Image.asset('assets/Organic.png')),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Organic',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset('assets/Rectangle 21.png'),
                                SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Image.asset('assets/Lipstick.png')),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Cosmetics',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset('assets/Rectangle 22.png'),
                                SizedBox(
                                    height: 70,
                                    width: 70,
                                    child:
                                        Image.asset('assets/Footprints.png')),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Baby Care',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset('assets/Rectangle 23.png'),
                                SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Image.asset('assets/spice.png')),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Spices',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset('assets/Rectangle 20.png'),
                                SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Image.asset(
                                        'assets/Dairy products.png')),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Milk Products',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset('assets/Rectangle 21.png'),
                                SizedBox(
                                    height: 70,
                                    width: 70,
                                    child:
                                        Image.asset('assets/Iced coffee.png')),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Soft Drinks',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset('assets/Rectangle 22.png'),
                                SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Image.asset('assets/Sweets.png')),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Candies',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset('assets/Rectangle 23.png'),
                                SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Image.asset('assets/Ladoo.png')),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Sweets',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset('assets/Rectangle 20.png'),
                                SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Image.asset('assets/Pet food.png')),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Pet Care\n           ',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset('assets/Rectangle 21.png'),
                                SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Image.asset('assets/Chips.png')),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Snacks\n           ',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset('assets/Rectangle 22.png'),
                                SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Image.asset('assets/Products.png')),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Cleaning\nAccesories',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset('assets/Rectangle 23.png'),
                                SizedBox(
                                    height: 70,
                                    width: 70,
                                    child: Image.asset('assets/Shampoo.png')),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Shampoo\n          ',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset('assets/Group 10.png'),
                          Positioned(
                              top: 80,
                              left: 40,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                      backgroundColor: WidgetStatePropertyAll(
                                          const Color.fromARGB(
                                              255, 205, 32, 19))),
                                  child: Text(
                                    'Get Now',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  )))
                        ],
                      )
                    ],
                  )
                ],
              ))),
      bottomNavigationBar: NavigationBarBottom(),
    );
  }
}

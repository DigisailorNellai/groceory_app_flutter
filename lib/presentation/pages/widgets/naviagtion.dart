import 'package:flutter/material.dart';
import 'package:flutter_get_x/presentation/pages/category.dart';
import 'package:flutter_get_x/presentation/pages/main_page.dart';
import 'package:flutter_get_x/presentation/pages/product_screen.dart';
import 'package:get/get.dart';

class NavigationBarBottom extends StatefulWidget {
  const NavigationBarBottom({super.key});

  @override
  State<NavigationBarBottom> createState() => _NavigationBarBottomState();
}

class _NavigationBarBottomState extends State<NavigationBarBottom> {
  late int MyIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          //height: 10,

          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              onTap: (index) {
                setState(() {
                  MyIndex = index;
                });
                switch (index) {
                  case 0:
                    Get.toNamed('/Main_Page');

                    break;
                  case 1:
                    Get.toNamed('/Product_Screen');

                    break;
                  case 2:
                    Get.toNamed('/Cart');

                    break;
                  case 3:
                    break;
                }
              },
              currentIndex: MyIndex,
              selectedItemColor: const Color.fromARGB(255, 175, 92, 76),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.list_alt_sharp,
                      color: Colors.white,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.shopping_cart_rounded,
                      color: Colors.white,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person_outline,
                      color: Colors.white,
                    ),
                    label: '')
              ],
              showUnselectedLabels: false,
              showSelectedLabels: false,
            ),
          ),
        ));
  }
}

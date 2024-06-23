import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_get_x/controller/auth_controller.dart';
import 'package:flutter_get_x/presentation/otp.dart';
import 'package:flutter_get_x/presentation/pages/cart.dart';
import 'package:flutter_get_x/presentation/pages/category.dart';
import 'package:flutter_get_x/presentation/pages/forget_password.dart';
import 'package:flutter_get_x/presentation/pages/main_page.dart';
import 'package:flutter_get_x/presentation/pages/product_details.dart';
import 'package:flutter_get_x/presentation/pages/product_screen.dart';
import 'package:flutter_get_x/presentation/pages/screen2.dart';
import 'package:flutter_get_x/presentation/pages/signin.dart';
import 'package:flutter_get_x/presentation/pages/splashscreen.dart';
import 'package:flutter_get_x/presentation/signup.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AuthController _authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth with GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //initialRoute: '/SplashScreen',
      home:  Obx(() {
        if (_authController.user.value != null) {
          return Main_Page();
        } else {
          return Signin();
        }
      }),
      getPages: [
        GetPage(name: '/SplashScreen', page: () => SplashScreen()),
        GetPage(name: '/Screen2', page: () => Screen2()),
        GetPage(name: '/Signup', page: () => Signup()),
        GetPage(name: '/Otp/:userId', page: () => Otp(userId: Get.parameters['userId']!)),
        GetPage(name: '/Signin', page: () => Signin()),
        GetPage(name: '/Main_Page', page: () => Main_Page()),
        GetPage(name: '/Forget_password', page: () => Forget_password()),
        GetPage(name: '/category', page: () => categoryPage()),
        //GetPage(name: '/Product_Screen', page: () =>  Product_Screen(Category: Category  )),
       // GetPage(name: '/ProductDetails', page: () => ProductDetails(items: ,)),
        GetPage(name: '/cart', page: () => CartScreen()),
      ],
    );
  }
}

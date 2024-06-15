import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth with GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/SplashScreen',
      getPages: [
        GetPage(name: '/SplashScreen', page: () => SplashScreen()),
        GetPage(name: '/Screen2', page: () => Screen2()),
        GetPage(name: '/Signup', page: () => Signup()),
        GetPage(name: '/Otp', page: () => Otp()),
        GetPage(name: '/Signin', page: () => Signin()),
        GetPage(name: '/Main_Page', page: () => Main_Page()),
        GetPage(name: '/Forget_password', page: () => Forget_password()),
        GetPage(name: '/category', page: () => category()),
        GetPage(name: '/Product_Screen', page: () => Product_Screen()),
        GetPage(name: '/ProductDetails', page: () => ProductDetails()),
        GetPage(name: '/Cart', page: () => Cart()),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Opacity(
          opacity: 0.5,
          child: Image.asset(
            'assets/download (10) 1 (1).png',
            width: 400,
            fit: BoxFit.fitWidth,
          )),
      const Center(
        child: Text(
          '  Your Gorcery\nStore Now In Your\n       Pocket',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 26,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
      Positioned(
          top: 600,
          left: 60,
          child: Container(
              height: 45,
              width: 260,
              child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/Signup');
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ))))
    ]));
  }
}

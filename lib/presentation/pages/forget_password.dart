import 'package:flutter/material.dart';
import 'package:flutter_get_x/controller/auth_controller.dart';
import 'package:flutter_get_x/dataSource/data.dart';
import 'package:get/get.dart';

class Forget_password extends StatelessWidget {
   Forget_password({super.key});

  apiService service = apiService();
  AuthController controller = Get.find();
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 70,
              horizontal: 90,
            ),
            child: Text(
              'Enter your Email',
              style: TextStyle(
                  fontFamily: 'Pooppins',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Email:',
            style: TextStyle(
                fontFamily: 'Pooppins',
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 320,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.green,
                )),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.only(
                left: 30,
              ),
              child: Container(
                  width: 260,
                  child: ElevatedButton(
                      onPressed: () {
                        controller.fPassword(emailController.text);
                        
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.green)),
                      child: const Text(
                        'Next',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      )))),
         
        ],
      ),
    )));
  }
}

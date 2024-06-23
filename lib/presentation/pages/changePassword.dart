import 'package:flutter/material.dart';
import 'package:flutter_get_x/controller/auth_controller.dart';
import 'package:flutter_get_x/presentation/pages/forget_password.dart';
import 'package:get/get.dart';

class cPassword extends StatefulWidget {
   final  String userId;
  const cPassword({super.key, required this.userId});

  @override
  State<cPassword> createState() => _SigninState();
}

class _SigninState extends State<cPassword> {
  bool visibility = false;
  bool checkValue = false;
  
  final AuthController controller = Get.put(AuthController());
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _cPasswordController = TextEditingController();
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
              'New Password',
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
            'password:',
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
              controller: _passwordController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Confirm Password:',
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
              controller: _cPasswordController,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          visibility = !visibility;
                        });
                      },
                      icon: Icon(visibility
                          ? Icons.visibility
                          : Icons
                              .visibility_off)) // Optional: adjust content padding
                  ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          
          Padding(
              padding: const EdgeInsets.only(
                left: 30,
              ),
              child: Container(
                  width: 260,
                  child: ElevatedButton(
                      onPressed: () {
                            controller.resetPassword(widget.userId, _passwordController.text, _cPasswordController.text);
                        
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.green)),
                      child: const Text(
                        'Change',
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

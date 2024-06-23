import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_get_x/controller/auth_controller.dart';
import 'package:get/get.dart';


class fPassOtp extends StatefulWidget {
  final String userId;
   const fPassOtp({super.key, required this.userId});

  @override
  State<fPassOtp> createState() => _OtpState();
}

class _OtpState extends State<fPassOtp> {
  TextEditingController otpController = TextEditingController();
  final AuthController controller = Get.find();

  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _controllers;
  final _numberOfFields = 4;


  @override
  void initState() {
    super.initState();
    _focusNodes = List.generate(_numberOfFields, (index) => FocusNode());
    _controllers =
        List.generate(_numberOfFields, (index) => TextEditingController());
  }

  @override
  void dispose() {
    for (int i = 0; i < _numberOfFields; i++) {
      _focusNodes[i].dispose();
      _controllers[i].dispose();
    }
    super.dispose();
  }
  String getOtp() {
    return _controllers.map((controller) => controller.text).join();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset('assets/Rectangle 78.png'),
            Image.asset('assets/Ellipse 5.png'),
            Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 90,
                          horizontal: 70,
                        ),
                        child: Text(
                          'Verification',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 35,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Text(
                        'Enter Your Code',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: List.generate(
                          _numberOfFields,
                          (index) => SizedBox(
                            width: 60.0,
                            child: TextFormField(
                              controller: _controllers[index],
                              focusNode: _focusNodes[index],
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              onChanged: (value) {
                                if (value.length == 1 &&
                                    index < _numberOfFields - 1) {
                                  FocusScope.of(context)
                                      .requestFocus(_focusNodes[index + 1]);
                                } else if (value.length == 0 && index > 0) {
                                  FocusScope.of(context)
                                      .requestFocus(_focusNodes[index - 1]);
                                }
                              },
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                counter: const Offstage(),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                    //color: Theme.of(context).accentColor,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'We Send Verification Code To your Mobile Number\n9876543210. Kindly Check Your Inbox',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 100, top: 20),
                          child: Container(
                              width: 130,
                              child: TextButton(
                                onPressed: () {
                                  final otp = getOtp();
                                  controller.verifyOtps(widget.userId, otp);
                                },
                                style: ButtonStyle(
                                    backgroundColor:
                                        WidgetStatePropertyAll(Colors.green)),
                                child: Text(
                                  'Verify',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ))),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                            left: 35,
                          ),
                          child: Text(
                            'I Didn\'t Recieve The Code ? Send Again',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                    ])),
            Padding(
              padding: EdgeInsets.only(left: 250, top: 600),
              child: Image.asset('assets/Ellipse 6.png'),
            )
          ],
        ),
      ),
    );
  }
}

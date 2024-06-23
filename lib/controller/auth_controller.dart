import 'package:flutter_get_x/dataSource/data.dart';
import 'package:flutter_get_x/presentation/otp.dart';
import 'package:flutter_get_x/presentation/pages/changePassword.dart';
import 'package:flutter_get_x/presentation/pages/main_page.dart';
import 'package:flutter_get_x/presentation/pages/signin.dart';
import 'package:flutter_get_x/presentation/pages/splashscreen.dart';
import 'package:get/get.dart';

import '../models/signUp.dart';
import '../models/user.dart';
import '../presentation/pages/forgotPasswordOtp.dart';
import '../services/storageServices.dart';

class AuthController extends GetxController {

   
  var user = Rx<User?>(null);
  final apiService _apiService = apiService();
  final StorageService _storageService = StorageService();

  @override
  void onInit() {
    super.onInit();
    _checkLoginStatus();
  }

   void _checkLoginStatus() async {
    String? token = await _storageService.readToken();
    if (token != null) {
      // Validate the token with your API if necessary
      user.value = User(id : 'userId',userName: 'userName',email: 'email',mobileNumber: 'mobileNumber',password: 'password', token: token, confirmPassword: 'confirmPassword', otp: 'otp' ); // Assuming User model has a token field
      Get.offAll(() => Main_Page());
    } else {
      Get.offAll(() => SplashScreen());
    }
  }

// Future<void> signup(String userName, String email, String mobileNumber, String password) async {
//   try {
//     final response = await _apiService.signup(userName, email, mobileNumber, password);
   
      
//       print('Signed up user ID: ${response.userId}');
//       Get.snackbar('Success', 'Signup successful');
//       Get.to(() => Otp(userId: response.userId));
    
//   } catch (e) {
//     print('Signup failed: $e');
//     Get.snackbar('Error', 'Signup failed');
//   }
// }

// Future<void> signup(String userName, String email, String mobileNumber, String password) async {
//   try {
//     Map<String, dynamic>? responseData = await _apiService.signup(userName, email, mobileNumber, password);
//     if (responseData != null && responseData.containsKey('userId')) {
//       String userId = responseData['userId'];
//       print('Signed up user ID: $userId');
//       Get.snackbar('Success', 'Signup successful');
//       Get.to(() => Otp(userId: userId));
//     } else {
//       print('Signup response did not contain userId');
//       Get.snackbar('Error', 'Signup failed');
//     }
//   } catch (e) {
//     print('Signup failed: $e');
//     Get.snackbar('Error', 'Signup failed');
//   }
// }

Future<void> signup(String userName, String email, String mobileNumber, String password) async {
  try {
    User signedUpUser = await _apiService.signup(userName, email, mobileNumber, password);
    
    // Now you can directly access signedUpUser.id
    print('Signed up user ID: ${signedUpUser!.id}');
    
    // Optionally, you can also print other details
    print('Signed up user details: $signedUpUser');

    // Perform actions like showing success message or navigating to OTP screen
    Get.snackbar('Success', 'Signup successful');
    Get.to(() => Otp(userId: signedUpUser.id));
    
  } catch (e) {
    print('Signup failed: $e');
    Get.snackbar('Error', 'Signup failed');
  }
}

  

  Future<bool> verifyOtp(String userId, String otp) async {
    print(userId);
    try {
      bool success = await _apiService.verifyOtp(userId, otp);
      if(success){
        Get.snackbar('otp is verified', 'user registered');
      Get.to(() => const Main_Page());
      return true;
      }else{
        return false;
      }
      
    } catch (e) {
      print('$e');
      Get.snackbar('Error', '$e');
      return false;
    } 
  }
  
  User? loggedInUser;
Future<void> login(String email, String password) async {
    try {
      User? user = await _apiService.login(email, password);
      if (user != null) {
         loggedInUser = user; // Save logged-in user details
         print('Logged in user ID: ${loggedInUser!.id}');
        await _storageService.writeToken(user.token, user.id);
        Get.offAll(() => Main_Page());
      }
    } catch (e) {
      Get.snackbar('Error', '$e');
    }
  }

  void logout() async {
    await _storageService.deleteToken(); // Delete token from storage
    loggedInUser = null; // Clear loggedInUser
    Get.offAll(() => Signin()); // Navigate to sign-in screen
  }

  void fPassword(String email) async {
    
    try {
      final signedUpUser = await _apiService.fpaasword(email);
      if (signedUpUser != null) {
        user.value = signedUpUser;
        print('Signed up user ID: ${user.value?.id}');
        Get.snackbar('Success', 'check your mail');
        Get.to(() => fPassOtp(userId: user.value!.id));
      } else {
        print('Signup response did not contain user data');
        Get.snackbar('Error', ' failed');
      }
    } catch (e) {
     // print('Signup : $e');
      Get.snackbar('Error', '$e');
    }
  } 

  Future<bool> resetPassword(String userId, String password, String confirmPassword) async {
    print(userId);
    try {
      await _apiService.changePassword(userId, password, confirmPassword );
      Get.snackbar('password is reseted', '');
      Get.to(() => const Main_Page());
      return true;
      
      
    } catch (e) {
      print('$e');
      Get.snackbar('Error', '$e');
      return false;
    } 
  }

  Future<void> verifyOtps(String userId, String otp) async {
    print(userId);
    //final id = userId;
    try {
      
      final signedUser = await _apiService.verifyOtps(userId, otp);
      if(signedUser != null){
        user.value = signedUser;
        Get.snackbar('otp is verified', 'change password');
      Get.to(() =>  cPassword(userId: userId));
     
      }else{
        Get.snackbar('error', '');
        //return false;
      }
      
    } catch (e) {
      print('$e');
      Get.snackbar('Error', '$e');
      //return false;
    } 
  }
}

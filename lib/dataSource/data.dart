import 'dart:convert';
import 'package:flutter_get_x/models/category.dart';
import 'package:flutter_get_x/models/otp.dart';
import 'package:flutter_get_x/models/signUp.dart';
import 'package:flutter_get_x/presentation/pages/changePassword.dart';
import 'package:flutter_get_x/presentation/pages/forgotPasswordOtp.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/cart.dart';
import '../models/user.dart';
import '../presentation/pages/cart.dart';


  
  const String baseUrl = 'http://10.0.2.2:5000';

  class apiService {

    
    Future<User> signup(String userName, String email, String mobileNumber, String password) async {
  final response = await http.post(
    Uri.parse('$baseUrl/auth/register'),
    headers: <String, String>{
      'Content-Type': 'application/json',
    },
    body: jsonEncode(<String, String>{
      'userName': userName,
      'email': email,
      'mobileNumber': mobileNumber,
      'password': password,
    }),
  );

  print('Signup response: ${response.body}');

  if (response.statusCode == 200) {
    final responseData = jsonDecode(response.body);
    if (responseData != null && responseData is Map<String, dynamic> &&
            responseData.containsKey('userId') && responseData.containsKey('message')) {
      print(response.statusCode);
      final userId = responseData['userId'];
      final userData = responseData['user'];
      return User(
        id: userId,
        userName: userData['userName']  ?? '',
        email: userData['email']  ?? '',
        mobileNumber: userData['mobileNumber']  ?? '',
        password: userData['password']  ?? '', 
        token: userData['token']  ?? '',
      );
    } else {
      throw Exception('Signup response did not contain expected data');
    }
  } else {
    throw Exception('Failed to signup');
  }
}


  Future<bool> verifyOtp(String userId, String otp) async {

    
    print ('$userId');
      final response = await http.post(
      Uri.parse('$baseUrl/auth/verify-otp/$userId'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'otp' : otp
      }),
    );
  print(response.statusCode);
     if(response.statusCode == 200) {
    return true;
  } else {
      throw Exception('Failed to verify OTP');
    }
  }

   Future<User?> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/auth/login'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );
      print(response.statusCode);
    if (response.statusCode == 200) {
      print(response.body);
      return User.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to login');
    }
  }

  Future<User?> fpaasword(String email) async {
    final response = await http.post(
      Uri.parse('$baseUrl/auth/forgotPassword'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'email': email,
      }),
    );
      print(response.statusCode);
    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('User not found');
    }
  }

//    Future<void> forgotPassword(String email) async {

//     Map<String, dynamic> requestbody = {
//     'email' : email,
// };
//       try{

//         final response = await http.post(
//       Uri.parse('$baseUrl/auth/forgotPassword'),
//       headers: <String, String>{
//         'Content-Type': 'application/json',
//       },
//       body: jsonEncode(requestbody),
//     );
//       print(response.statusCode);
//     if (response.statusCode == 200) {
//       Get.snackbar('check you mail', 'otp has sent to you');
//       Get.to(() => fPassOtp(userId: ));
//     }

//       }catch(e){
//         Get.snackbar('error', '$e');
//       }
    
//   }

  Future<User?> verifyOtps(String userId, String otp) async {

    
    print ('$userId');
    print('$otp');
      final response = await http.post(
      Uri.parse('$baseUrl/auth/verify-otp/$userId'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'otp' : otp
      }),
    );

  print(response.statusCode);
     if(response.statusCode == 200) {
    return User.fromJson(jsonDecode(response.body));
  } else {
      throw Exception('Failed to verify OTP');
    }
  }

  Future<User?> changePassword(String userId, String password, String confirmPassword) async {

    
    print ('$userId');
      final response = await http.post(
      Uri.parse('$baseUrl/auth/resetPassword/$userId'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'password' : password,
        'confirmPassword' : confirmPassword
      }),
    );
  print(response.statusCode);
     if(response.statusCode == 200) {
    return User.fromJson(jsonDecode(response.body));
  } else {
      throw Exception('Failed to reset passwrod');
    }
  }


  static Future<List<cateGory>> fetchCategories() async {
    final response = await http.get(Uri.parse('$baseUrl/productGet/categories'));

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      return body.map((dynamic category) => cateGory.fromJson(category)).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }

 Future<Map<String, dynamic>> fetchCart(String userId) async {
    try {
      var url = Uri.parse('$baseUrl/cart/cart/$userId'); // Adjust API endpoint as per your routes
      var response = await http.get(url);

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load cart data');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

   Future<Cart> addToCart(String userId, String itemId, int quantity) async {
    final url = Uri.parse('$baseUrl/cart/cart/add'); 

    final body = jsonEncode({
      "userId": userId,
      "itemId": itemId,
      "quantity": quantity,
    });

    try {
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: body,
      );
      print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        return Cart.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('Failed to add item to cart');
      }
    } catch (e) {
      print('Exception during add to cart: $e');
      throw Exception('Failed to add item to cart');
    }
  }

  
}

  



 

  
  
 

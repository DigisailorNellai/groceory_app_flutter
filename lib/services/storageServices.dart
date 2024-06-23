import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  Future<void> writeToken(String token, String userId) async {
    await _secureStorage.write(key: 'jwt_token', value: token);
    await _secureStorage.write(key: 'user_id', value: userId);
     print('Token and User ID stored. User ID: $userId');
     print('Token and User ID stored. User ID: $token');
  }

  Future<String?> readToken() async {
    return await _secureStorage.read(key: 'jwt_token');
  }

  Future<String?> readUserId() async {  
  return await _secureStorage.read(key: 'user_id');

  }

  Future<void> deleteToken() async {
    await _secureStorage.delete(key: 'jwt_token');
    await _secureStorage.delete(key: 'user_id');
  }
}
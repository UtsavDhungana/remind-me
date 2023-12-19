import 'package:injectable/injectable.dart';
import 'package:remind_me/app/database/secure_storage.dart';

@LazySingleton()
class UserDao {
  final SecureStorage _secureStorage;

  UserDao(this._secureStorage);

  // Get and set data for local storage should be done through DAOs
  Future<void> saveToken(String token) async {
    await _secureStorage.saveCookies(token);
  }

  Future<String?> getToken() async {
    return await _secureStorage.getCookies();
  }

  // Future<void> saveUserDetails(
  //   LoginModel userInfoModel,
  // ) async {
  //   await _secureStorage.saveUserInfo(userInfoModel);
  // }

  // Future<LoginModel?> getUserDetails() async {
  //   return await _secureStorage.getUserInfo();
  // }

  // Future<void> savePassword(String password) async {
  //   await _secureStorage.savePassword(password);
  // }

  // Future<String?> getPassword() async {
  //   return await _secureStorage.getPassword();
  // }

  // Future<void> saveUserNamePassword(
  //     Map<String, dynamic> userNamePassword) async {
  //   return _secureStorage.saveUserNamePassword(
  //     userNamePassword,
  //   );
  // }

  // Future<Map<String, dynamic>?> getUserNamePassword() async {
  //   return _secureStorage.getUserNamePassword();
  // }

  Future<void> clear() async {
    await _secureStorage.deleteUserInfo();
    await _secureStorage.clearCookies();
    _secureStorage.clear();
  }
}

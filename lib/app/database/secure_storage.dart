import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SecureStorage {
  static AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );

  static const keyCookieList = "cookieList";
  static const keyUserDetails = "userDetails";
  static const keyPassword = "password";
  static const locationPermissionKey = "LocationPermission";

  static final _secureStorage = FlutterSecureStorage(
    aOptions: _getAndroidOptions(),
  );

  Future saveCookies(String cookies) async {
    final value = json.encode(cookies);
    await _secureStorage.write(key: keyCookieList, value: value);
  }

  Future<String?> getCookies() async {
    final value = await _secureStorage.read(key: keyCookieList);
    return value == null ? null : (json.decode(value));
  }

  // Future saveUserInfo(LoginModel userInfoModel) async {
  //   final value = json.encode(userInfoModel.toJson());
  //   await _secureStorage.write(key: keyUserDetails, value: value);
  // }

  // Future<LoginModel?> getUserInfo() async {
  //   final value = await _secureStorage.read(key: keyUserDetails);
  //   return value == null
  //       ? null
  //       : LoginModel.fromJson(
  //           json.decode(value),
  //         );
  // }

  Future<void> deleteUserInfo() async {
    await _secureStorage.delete(key: keyUserDetails);
    await _secureStorage.delete(key: keyPassword);
  }

  Future<void> clearCookies() async {
    await _secureStorage.delete(key: keyCookieList);
  }

  Future<void> deleteFilterValues() async {}

  void setLocationPermissionAllowed() async {
    await _secureStorage.write(
      key: locationPermissionKey,
      value: true.toString(),
    );
  }

  Future<bool> getLocationPermissionAllowed() async {
    final value = await _secureStorage.read(key: locationPermissionKey);
    return value?.toLowerCase() == 'true' ? true : false;
  }

  void clear() {
    _secureStorage.deleteAll();
  }
}

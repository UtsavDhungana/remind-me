import 'dart:convert';
import 'package:http/http.dart';

import '../constants/constants.dart';
import '../error/exception.dart';

dynamic decodeBodyAndThrowPossibleException(Response resp) {
  try {
    final json = jsonDecode(
      resp.body,
    );
    if (resp.statusCode > 299 || json["success"] == false) {
      if (json['msg'] != null) {
        String msg = '';
        if (json['msg'].runtimeType.toString().contains('List')) {
          String temp = '';
          json['msg'].forEach((data) {
            temp = '$temp $data';
          });
          msg = temp;
        } else {
          msg = json['msg'];
          if (msg.toLowerCase() == ErrorMessage.unauthenticatedErrorText) {
            throw UnauthenticatedException(
              ErrorMessage.userUnauthenticatedErrorText,
            );
          }
        }
        throw ServerException(msg);
      } else {
        throw Exception();
      }
    }
    return json;
  } catch (e) {
    rethrow;
  }
}

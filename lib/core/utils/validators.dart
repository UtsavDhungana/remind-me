import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/constants.dart';

typedef ValidatorFunctionType = String? Function(String?)?;
typedef ValidatorFunctionTypeObj = String? Function(Object?)?;
typedef TwoDotOnChanged = dynamic Function(String)?;

class Validators {
  static List<TextInputFormatter> getPhoneFormatter() {
    return [
      FilteringTextInputFormatter.allow(
          RegExp(r'^(\+?[0-9]{2,3}[ -]?)?[0-9]{6,10}$')),
      LengthLimitingTextInputFormatter(10),
    ];
  }

  static List<TextInputFormatter> getDigitsOnlyFormatter() {
    return [
      FilteringTextInputFormatter.digitsOnly,
    ];
  }

  static TextInputFormatter getDigitWithDotFormatter() {
    return FilteringTextInputFormatter.allow(RegExp(r'\d+\.?\d*'));
  }

  static String? Function(String?)? getEmptyValidator(String errorMessage) {
    return (value) {
      if (value!.trim().isEmpty) {
        return errorMessage;
      }
      return null;
    };
  }

  static ValidatorFunctionType getPasswordValidator() {
    return (value) {
      if (value!.trim().isEmpty) {
        return ErrorMessage.passwordEmptyErrorText;
      }
      // else if (value.length < 8) {
      //   return StringConstants.passwordLengthErrorText;
      // }
      return null;
    };
  }

  static ValidatorFunctionType getConfirmPasswordValidator(
      TextEditingController? controller) {
    return (value) {
      if (value!.trim().isEmpty) {
        return ErrorMessage.passwordEmptyErrorText;
      } else if (value != controller?.text) {
        return ErrorMessage.confirmPasswordNotMatchErrorText;
      }
      return null;
    };
  }

  static ValidatorFunctionTypeObj getEmptyValidatorDropDown(
      String? errorMessage) {
    return (value) {
      if (value == null) {
        return errorMessage as String;
      }
      if (value.toString().trim().isEmpty) {
        return errorMessage as String;
      }
      return null;
    };
  }
}

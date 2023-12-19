import 'package:flutter/material.dart';

class ApiEndpoints {
  static const loginUrl = "/login";
}

class AppColors {
  static const primaryColor = Color(0XFF037576);
  static const primaryColorLight = Color(0XFF069A9C);
  static const errorIconColor = Color(0xffF43400);
  static const blueshGreyColor = Color(0XFF8F959E);
  static const greyColor = Color(0XFF828282);
  static const lightGreyColor = Color(0XFFE0E0E0);
  static const darkBlueColor = Color(0XFF002B71);
  static const yellowColor = Color(0XFFD9B807);
  // static const appbarBackgroundColor = Color(0XFF528AAE);
}

class ErrorMessage {
  static const serverFailureMessage = "Server failure";
  static const cacheFailureMessage = "Cache failure";
  static const internetFailureMessage = "No internet connection";
  static const gpsEmptyErrorText = 'Please select a gps';
  static const userUnauthenticatedErrorText =
      'Your session has expired. Please Login again.';
  static const somethingWentWrongFailureMessage = 'Something went wrong!!';
  static const unauthenticatedErrorText = "unauthenticated.";

  static const emailOrUserNameEmptyErrorText = "Email or Username is required";
  static const passwordEmptyErrorText = "Password is required";
  static const confirmPasswordEmptyErrorText =
      "Confirmation password is required";
  static const confirmPasswordNotMatchErrorText =
      'Confirm password did not match';
  static const fieldIsRequiredErrorText = "This field is required.";
  static const dontHaveEnoughtCreditPointsText =
      "You do not have enought credit points.";
  static const fileSizeLessThen10MBText =
      "The total file size must be less then 10MB.";
}

class StringConstant {
  static const doubleTapToExitText = "Double tap to exit the app.";
  static const noDataAvailableText = "No Data Available";
  static const canNotEditText = "Can Not Edit";
  static const dateRangeText = "Date Range";
  static const selectStartDateText = 'Please Select Start Date';
  static const selectEndDateText = 'Please Select End Date';
  static const locationPermissionText = "Location Permission";
  static const whyNeedsLocationText =
      "This App uses the location permission to find location of user in Google Map Picker for survey.";
  static const allowText = "Allow";
  static const denyText = "Deny";
  static const userPermissionDeniedErrorText =
      'User did not allow reading external storage';
  static const confirmPasswordText = "Confirm Password";
  static const loginSuccessfullyText = "Logged in successfully";
  static const passwordText = "Password";

  //APP NAME
  static const remindMeText = "Remind Me";

  //LOGOUT DIALOG
  static const logoutText = "Logout";
  static const logoutConfirmationText = 'Are you sure you want to logout?';
  static const yesText = 'YES';
  static const noText = 'NO';

  //LOGIN SCREEN
  static const logInText = "Log in";
  static const signInInstructionText =
      "Enter your details to get sign in to your account";
  static const emailOrUserNameText = "Email / Username";
  static const signInText = "Sign in";
}

// import 'package:flutter/material.dart';

// ThemeData lightMode = ThemeData(
//   brightness: Brightness.light,
//   colorScheme: ColorScheme.light(
//     background: Colors.grey.shade400,
//     primary: Colors.grey.shade300,
//     secondary: Colors.grey.shade200,
//   ),
// );

// ThemeData darkMode = ThemeData(
//   brightness: Brightness.dark,
//   colorScheme: ColorScheme.dark(
//     background: Colors.grey.shade900,
//     primary: Colors.grey.shade800,
//     secondary: Colors.grey.shade700,
//   ),
// );

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/constants.dart';

ThemeData get lightTheme => ThemeData(
      // primarySwatch: MaterialColor(0XFF598DF2, color),
      primaryColor: AppColors.primaryColor,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        // elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 254, 254),
        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
        titleTextStyle: TextStyle(
          fontSize: 18.0.sp,
          fontFamily: "Metropolis",
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
          color: Colors.white,
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      iconTheme: const IconThemeData(
        color: AppColors.primaryColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          padding: EdgeInsets.symmetric(
            vertical: 10.0.h,
          ),
          textStyle: TextStyle(
            fontFamily: "Metropolis",
            fontSize: 14.0.sp,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              5.0.r,
            ),
          ),
        ),
      ),
      fontFamily: 'Metropolis',
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: 20.0.sp,
          fontWeight: FontWeight.w700,
          color: AppColors.primaryColor,
        ),
        headlineMedium: TextStyle(
          fontSize: 20.0.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.primaryColor,
        ),
        headlineSmall: TextStyle(
          fontSize: 16.0.sp,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        titleLarge: TextStyle(
          fontSize: 15.0.sp,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        titleMedium: TextStyle(
          fontSize: 15.0.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        titleSmall: TextStyle(
          fontSize: 15.0.sp,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
          color: Colors.black,
          height: 1.5,
        ),
        bodyLarge: TextStyle(
          fontSize: 13.0.sp,
          fontWeight: FontWeight.w600,
          color: Colors.black,
          height: 1.5,
        ),
        bodyMedium: TextStyle(
          fontSize: 13.0.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        bodySmall: TextStyle(
          fontSize: 13.0.sp,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
          color: Colors.black,
          height: 1.5,
        ),
        labelLarge: TextStyle(
          fontSize: 11.0.sp,
          fontWeight: FontWeight.w600,
          color: Colors.black,
          height: 1.5,
        ),
        labelMedium: TextStyle(
          fontSize: 11.0.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
          height: 1.5,
        ),
        labelSmall: TextStyle(
          fontSize: 11.0.sp,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
          color: Colors.black,
          height: 1.5,
        ),
      ),
    );

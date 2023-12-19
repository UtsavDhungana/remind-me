import 'package:flutter/material.dart';

import '../../core/constants/routes.dart';
import '../../features/home/presentation/page/home.dart';
import '../../features/login/presentation/page/login_screen.dart';
import '../../features/splash_screen.dart';

class AppRouter {
  MaterialPageRoute onGeneratRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.loginPageRoute:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case Routes.homePageRoute:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      // case Routes.parkedVehiclesPageRoute:
      //   final data = routeSettings.arguments as bool?;
      //   return MaterialPageRoute(
      //     builder: (_) => ParkedVehiclesScreen(
      //       isTwoWheeler: data ?? true,
      //     ),
      //   );
      // case Routes.sellPointsCompletedPageRoute:
      //   final data = routeSettings.arguments as Map<String, dynamic>;
      //   return MaterialPageRoute(
      //     builder: (_) => SellPointsCompletedScreen(
      //       creditTransferred: data['credit_transferred'],
      //       date: data['date'],
      //       personalInfo: data['personal_info'],
      //       receiversBusinessName: data['receivers_business_name'],
      //       remarks: data['remarks'],
      //       totalAmount: data['total_amount'],
      //       totalDiscount: data['total_discount'],
      //     ),
      //   );
      default:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
    }
  }
}

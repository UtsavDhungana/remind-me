import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remind_me/app/theme/theme_data.dart';
import 'package:remind_me/features/splash_screen.dart';
import 'app/router/app_routes.dart';
import 'core/constants/configs.dart';
import 'features/injection.dart';
import 'firebase_options.dart';

class MyHttpOverrides extends HttpOverrides {
  //Remove this code once the live server gets the ssl certificate
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  HttpOverrides.global = MyHttpOverrides();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return
        // MultiBlocProvider(
        //   providers: [
        //     // BlocProvider(
        //     //   create: (_) => getIt<CustomerDropdownCubit>(),
        //     // ),
        //     // BlocProvider(
        //     //   create: (context) => getIt<IndividualSurveyDetailsCubit>(),
        //     // ),
        //   ],
        //   child:
        ScreenUtilInit(
      designSize: const Size(
        UiConfig.kWidth,
        UiConfig.kHeight,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: ((context, child) {
        return MaterialApp(
          title: AppConfig.appName,
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          onGenerateRoute: _appRouter.onGeneratRoute,
          initialRoute: '/',
        );
      }),
    );
    // );
  }
}

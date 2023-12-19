import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../core/constants/configs.dart';
import '../core/constants/constants.dart';
import '../core/constants/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  void _checkLoginStatus() async {
    // final isLoggedIn = await BlocProvider.of<LoginCubit>(context).isLoggedIn();
    // if (!mounted) return;
    // if (isLoggedIn) {
    //   await BlocProvider.of<LoginCubit>(context).setStateToLoaded();
    //   _navigateToNextScreen(context, () {
    //     Navigator.of(context).pushReplacementNamed(
    //       Routes.homePageRoute,
    //     );
    //   });
    // } else {
    //   _navigateToNextScreen(
    //     context,
    //     () {
    //       Navigator.of(context).pushReplacementNamed(
    //         Routes.loginPageRoute,
    //       );
    //     },
    //   );
    // }

    await Future.delayed(const Duration(seconds: 2));
    Navigator.of(context).pushReplacementNamed(
      Routes.loginPageRoute,
    );
  }

  void _navigateToNextScreen(
      BuildContext context, VoidCallback onSuccess) async {
    await Future.delayed(
      const Duration(milliseconds: 2000),
    );
    onSuccess.call();
  }

  double _opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColorLight,
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                SizedBox(
                  width: UiConfig.kWidth.w,
                  child: Image.asset(
                    "assets/images/remind-me.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 1500),
              builder: (_, double value, __) {
                _opacity = value;
                return Opacity(
                  opacity: _opacity,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 76.0.w,
                      right: 76.0.w,
                      bottom: 60.0.h,
                    ),
                    child: Text(
                      StringConstant.remindMeText,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

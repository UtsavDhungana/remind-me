import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/configs.dart';
import '../constants/constants.dart';

class KAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final String appBarTitle;
  final bool isMainProfile;
  final bool showLogoutIcon;
  final bool hasStack;
  final double? appBarHeight;
  final bool showBackIcon;
  final VoidCallback? onGoBank;
  final bool isSafeAreaUsed;
  final bool showAddIcon;
  final void Function()? onAdd;

  const KAppBar({
    this.onGoBank,
    required this.scaffoldKey,
    required this.appBarTitle,
    this.isMainProfile = false,
    this.showLogoutIcon = false,
    this.hasStack = true,
    this.showBackIcon = false,
    this.appBarHeight,
    this.isSafeAreaUsed = false,
    this.showAddIcon = false,
    this.onAdd,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: UiConfig.kWidth.w,
      height: appBarHeight ??
          (isMainProfile
              ? hasStack
                  ? 240.0.h
                  : isSafeAreaUsed
                      ? 50.0.h
                      : 95.0.h
              : hasStack
                  ? 160.0.h
                  : isSafeAreaUsed
                      ? 50.0.h
                      : 95.0.h),
      color: AppColors.primaryColor,
      child: Column(
        children: [
          if (!isSafeAreaUsed)
            SizedBox(
              height: 38.0.h,
            ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.0.h,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (showBackIcon)
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.0.w,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        if (onGoBank != null) {
                          onGoBank!();
                          return;
                        }
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: showLogoutIcon ? 50.0.w : 0.0.w,
                        right: showBackIcon ? 37.0.w : 0.0.w,
                      ),
                      child: Text(
                        appBarTitle,
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontSize: 16.sp,
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ),
                ),
                if (showLogoutIcon)
                  Padding(
                    padding: EdgeInsets.only(
                      right: 12.0.w,
                    ),
                    child: GestureDetector(
                      onTap: () async {
                        // final navigator = Navigator.of(context);
                        // final blocContext =
                        //     BlocProvider.of<LoginCubit>(context);
                        // final value = await showDialog(
                        //     context: context,
                        //     builder: (context) {
                        //       return const LogoutDialogWidget();
                        //     });
                        // if (value == true) {
                        //   blocContext.logOut();
                        //   navigator.pushNamedAndRemoveUntil(
                        //     Routes.loginPageRoute,
                        //     (route) => false,
                        //   );
                        // }
                      },
                      child: const Icon(
                        Icons.logout,
                        size: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                if (showAddIcon)
                  Padding(
                    padding: EdgeInsets.only(
                      right: 12.0.w,
                    ),
                    child: GestureDetector(
                      onTap: onAdd,
                      child: const Icon(
                        Icons.add,
                        size: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LogoutDialogWidget extends StatelessWidget {
  const LogoutDialogWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        StringConstant.logoutText,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      content: Text(
        StringConstant.logoutConfirmationText,
        style: Theme.of(context).textTheme.bodySmall,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context, true);
          },
          child: Text(
            StringConstant.yesText,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, false);
          },
          child: Text(
            StringConstant.noText,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}

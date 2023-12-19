import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/k_textfield.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/utils/validators.dart';
import '../../../../core/widgets/k_password_widget.dart';
import '../widgets/login_button_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _emailOrUserNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 96.0.h,
                  ),
                  child: Image.asset(
                    "assets/images/bandipurLoginIcon.png",
                    fit: BoxFit.contain,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(
                    bottom: 14.0.h,
                  ),
                  child: Text(
                    StringConstant.logInText,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 16.0.h,
                    left: 80.0.w,
                    right: 80.0.w,
                  ),
                  child: Text(
                    StringConstant.signInInstructionText,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 40.0.h,
                    left: 45.0.w,
                    right: 45.0.w,
                  ),
                  child: KTextField(
                    controller: _emailOrUserNameController,
                    hintText: StringConstant.emailOrUserNameText,
                    validator: Validators.getEmptyValidator(
                      ErrorMessage.emailOrUserNameEmptyErrorText,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 14.0.h,
                  ),
                  child: PasswordWidget(
                    controller: _passwordController,
                    textInputAction: TextInputAction.done,
                    onFieldSubmitted: (_) {
                      // _performLogin();
                    },
                  ),
                ),
                // InkWell(
                //   onTap: () {
                //     Navigator.of(context).pushReplacementNamed(
                //         ForgetPasswordScreen.route);
                //   },
                //   child: Padding(
                //     padding: EdgeInsets.only(
                //       bottom: 20.0.h,
                //       right: 30.0.w,
                //     ),
                //     child: Align(
                //       alignment: Alignment.topRight,
                //       child: Text(
                //         StringConstants.forgetPass,
                //         style: Theme.of(context)
                //             .textTheme
                //             .headline6!
                //             .copyWith(
                //               color: const Color(0XFF8F959E),
                //             ),
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 53.0.h,
                ),
                LoginButtonWidget(
                  emailOrUserNameController: _emailOrUserNameController,
                  passwordController: _passwordController,
                  formKey: _formKey,
                ),
                SizedBox(
                  height: 20.0.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../core/constants/routes.dart';
import '../../../../core/widgets/k_button.dart';

class LoginButtonWidget extends StatelessWidget {
  final TextEditingController _passwordController;
  final TextEditingController _emailOrUserNameController;
  final GlobalKey<FormState> _formKey;

  const LoginButtonWidget({
    required TextEditingController passwordController,
    required TextEditingController emailOrUserNameController,
    required GlobalKey<FormState> formKey,
    Key? key,
  })  : _emailOrUserNameController = emailOrUserNameController,
        _passwordController = passwordController,
        _formKey = formKey,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 44.0.w,
      ),
      child: SizedBox(
        width: double.infinity,
        child: KButton(
          text: StringConstant.signInText,
          press: () {
            // final validated = _formKey.currentState?.validate();
            // if (validated == true) {
            //   BlocProvider.of<LoginCubit>(context).loginUser(
            //     _emailOrUserNameController.text,
            //     _passwordController.text,
            //   );
            // }
            Navigator.of(context).pushReplacementNamed(Routes.homePageRoute);
          },
          // isLoading: state.maybeMap(
          //   loading: (value) => true,
          //   orElse: () => false,
          // ),
        ),
      ),
    );
  }
}

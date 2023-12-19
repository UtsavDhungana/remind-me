import 'dart:io';

import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'k_progress_dialog.dart';

class KCircularProgressIndicator extends StatelessWidget {
  const KCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? const Center(
            child: CircularProgressIndicator(
              color: AppColors.primaryColor,
              backgroundColor: Colors.white,
            ),
          )
        : Center(
            child: progressDialog(),
          );
  }
}

import 'package:flutter/material.dart';

import 'k_appbar.dart';
import 'k_circular_progress_indicator.dart';

class KCircularProgressIndicatorWithAppBar extends StatelessWidget {
  final bool showLogoutIcon;
  final bool showBackIcon;
  final String appBarTitle;

  KCircularProgressIndicatorWithAppBar({
    super.key,
    required this.appBarTitle,
    this.showBackIcon = false,
    this.showLogoutIcon = false,
  });

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        KAppBar(
          scaffoldKey: _key,
          appBarTitle: appBarTitle,
          hasStack: false,
          showBackIcon: showBackIcon,
          showLogoutIcon: showBackIcon,
        ),
        const Expanded(
          child: KCircularProgressIndicator(),
        ),
      ],
    );
  }
}

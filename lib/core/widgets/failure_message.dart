import 'package:flutter/material.dart';

import '../error/failures.dart';

class FailureMessage extends StatelessWidget {
  final Failure failure;
  const FailureMessage({super.key, required this.failure});

  @override
  Widget build(BuildContext context) {
    //here the stack and listview have been used just to achieve the refresh indicator
    return Stack(
      children: [
        ListView(
          children: const [],
        ),
        Center(
          child: Text(
            failure.failureMessage.toString(),
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ],
    );
  }
}

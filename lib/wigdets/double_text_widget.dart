// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:booktickets/utils/app_style.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String linkText;
  const AppDoubleTextWidget({
    Key? key,
    required this.bigText,
    required this.linkText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Styles.headLineStyle2,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              linkText,
              style: Styles.textStyle.copyWith(color: primary),
            ))
      ],
    );
  }
}

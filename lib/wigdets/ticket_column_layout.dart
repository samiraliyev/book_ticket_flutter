// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secontText;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const AppColumnLayout({
    Key? key,
    required this.firstText,
    required this.secontText,
    required this.alignment,
    this.isColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: isColor == null
              ? Styles.headLineStyle3.copyWith(color: Colors.white)
              : Styles.headLineStyle3,
        ),
        Gap(Applayout.getHeight(5.0)),
        Text(
          secontText,
          style: isColor == null
              ? Styles.headLineStyle4.copyWith(color: Colors.white)
              : Styles.headLineStyle4,
        )
      ],
    );
  }
}

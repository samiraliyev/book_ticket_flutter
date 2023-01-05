// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:booktickets/utils/app_layout.dart';

class AppTicketTab extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTab({
    Key? key,
    required this.firstTab,
    required this.secondTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);

    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Applayout.getHeight(50.0)),
          color: const Color(0xfff4f6fd),
        ),
        child: Row(
          children: [
            // airline tickets tab
            Container(
              padding: EdgeInsets.symmetric(vertical: Applayout.getHeight(7.0)),
              width: size.width * .44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(Applayout.getHeight(50.0))),
                color: Colors.white,
              ),
              child: Center(
                child: Text(firstTab),
              ),
            ),
            // hotels tickets tab
            Container(
              padding: EdgeInsets.symmetric(vertical: Applayout.getHeight(7.0)),
              width: size.width * .44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(Applayout.getHeight(50.0))),
                color: Colors.transparent,
              ),
              child: Center(child: Text(secondTab)),
            )
          ],
        ),
      ),
    );
  }
}

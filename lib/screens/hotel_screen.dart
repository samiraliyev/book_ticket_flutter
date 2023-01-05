import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Container(
        width: size.width * 0.6,
        height: Applayout.getHeight(350.0),
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 17.0),
        margin: const EdgeInsets.only(right: 17.0, top: 5.0),
        decoration: BoxDecoration(
            color: Styles.primaryColor,
            borderRadius: BorderRadius.circular(24.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 20.0,
                spreadRadius: 5.0,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: Applayout.getHeight(180.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Styles.primaryColor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/${hotel['image']}'),
                ),
              ),
            ),
            const Gap(10.0),
            Text(
              hotel['place'],
              style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
            ),
            const Gap(5.0),
            Text(
              hotel['destination'],
              style: Styles.headLineStyle3.copyWith(color: Colors.white),
            ),
            const Gap(8.0),
            Text(
              '\$${hotel['price']}/nigth',
              style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
            ),
          ],
        ));
  }
}

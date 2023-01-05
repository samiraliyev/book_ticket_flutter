import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/wigdets/layout_builder_widget.dart';
import 'package:booktickets/wigdets/ticket_column_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: Applayout.getHeight(20.0),
            vertical: Applayout.getHeight(20.0)),
        children: [
          Gap(Applayout.getHeight(40.0)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Applayout.getHeight(86.0),
                width: Applayout.getHeight(86.0),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(Applayout.getHeight(10.0)),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/im1.png'))),
              ),
              Gap(Applayout.getHeight(10.0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.headLineStyle1,
                  ),
                  Gap(Applayout.getHeight(2.0)),
                  Text(
                    'New - York',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Gap(Applayout.getHeight(8.0)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Applayout.getHeight(100.0)),
                      color: const Color(0xfffef4f3),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: Applayout.getHeight(3.0),
                        vertical: Applayout.getHeight(3.0)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15.0,
                          ),
                        ),
                        Gap(Applayout.getHeight(5.0)),
                        const Text(
                          'Premium status',
                          style: TextStyle(
                            color: Color(0xff526799),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(Applayout.getHeight(10.0)),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Edit',
                      style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(Applayout.getHeight(8.0)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(Applayout.getHeight(8.0)),
          Stack(
            children: [
              Container(
                height: Applayout.getHeight(90.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius:
                      BorderRadius.circular(Applayout.getHeight(18.0)),
                ),
              ),
              Positioned(
                right: -45.0,
                top: -40.0,
                child: Container(
                  padding: EdgeInsets.all(Applayout.getHeight(30.0)),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border:
                        Border.all(width: 18.0, color: const Color(0xff264cd2)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Applayout.getHeight(25.0),
                    vertical: Applayout.getHeight(20.0)),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25.0,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 27.0,
                      ),
                    ),
                    Gap(Applayout.getHeight(12.0)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You\'ve got a award",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16.0,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(Applayout.getHeight(25.0)),
          Text(
            'Accumulated miles',
            style: Styles.headLineStyle2,
          ),
          Gap(Applayout.getHeight(25.0)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Applayout.getWidth(15.0)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Applayout.getWidth(18.0),
                ),
                color: Styles.bgColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1.0,
                      spreadRadius: 1.0)
                ]),
            child: Column(
              children: [
                Gap(Applayout.getHeight(25.0)),
                Text(
                  '192802',
                  style: TextStyle(
                    fontSize: 45.0,
                    color: Styles.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Gap(
                  Applayout.getHeight(20.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles accrued',
                      style: Styles.headLineStyle4.copyWith(
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      '05 january 2023',
                      style: Styles.headLineStyle4.copyWith(
                        fontSize: 16.0,
                      ),
                    )
                  ],
                ),
                Gap(
                  Applayout.getHeight(4.0),
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Gap(
                  Applayout.getHeight(4.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: '23 042',
                      secontText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: 'Airline CO',
                      secontText: 'Received from',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    )
                  ],
                ),
                Gap(Applayout.getHeight(12)),
                const AppLayoutBuilderWidget(
                  sections: 12,
                  isColor: false,
                ),
                Gap(Applayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: '24',
                      secontText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: 'Mc Donal\'s',
                      secontText: 'Received from',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    )
                  ],
                ),
                Gap(Applayout.getHeight(12)),
                const AppLayoutBuilderWidget(
                  sections: 12,
                  isColor: false,
                ),
                Gap(Applayout.getHeight(12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      firstText: '52 340',
                      secontText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: 'Exuma',
                      secontText: 'Received from',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    )
                  ],
                )
              ],
            ),
          ),
          Gap(Applayout.getHeight(12)),
          Center(
              child: InkWell(
                  onTap: () {},
                  child: Text(
                    'How to get more miles',
                    style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w500),
                  ))),
        ],
      ),
    );
  }
}

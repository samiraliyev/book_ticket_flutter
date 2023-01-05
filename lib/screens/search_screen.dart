import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/wigdets/double_text_widget.dart';
import 'package:booktickets/wigdets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: Applayout.getWidth(20.0),
            vertical: Applayout.getHeight(20.0)),
        children: [
          Gap(Applayout.getHeight(40.0)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle1.copyWith(fontSize: 35.0),
          ),
          Gap(Applayout.getHeight(20.0)),
          const AppTicketTab(firstTab: 'Airline Tickets', secondTab: 'Hotels'),
          // input search departure, to
          Gap(Applayout.getHeight(15.0)),
          Column(
            children: [
              // for departure
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: TextField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    hintText: "Departure",
                    prefixIcon: Icon(
                      Icons.flight_takeoff_rounded,
                      color: Color(0xffbfc2df),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
              Gap(Applayout.getHeight(15.5)),
              // for arrival
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: TextField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    hintText: "Arrival",
                    prefixIcon: Icon(
                      Icons.flight_land_rounded,
                      color: Color(0xffbfc2df),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
              Gap(Applayout.getHeight(15.5)),
              // search button
              Container(
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Find tickets',
                    style: Styles.textStyle.copyWith(color: Colors.white),
                  ),
                ),
              ),
              Gap(Applayout.getHeight(15.0)),
              const AppDoubleTextWidget(
                  bigText: 'Upcoming Flights', linkText: 'View all'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: Applayout.getHeight(425.0),
                    width: size.width * 0.42,
                    padding: EdgeInsets.symmetric(
                        horizontal: Applayout.getHeight(15.0),
                        vertical: Applayout.getWidth(15.0)),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Applayout.getHeight(20.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1,
                        )
                      ],
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: Applayout.getHeight(190.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  Applayout.getHeight(12.0)),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/sit.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Gap(Applayout.getHeight(12.0)),
                        Text(
                          "20% discount on the early booking of this flight. Don't miss.",
                          style: Styles.headLineStyle2,
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: size.width * 0.44,
                            height: Applayout.getHeight(200.0),
                            decoration: BoxDecoration(
                              color: const Color(0xff3ab8b8),
                              borderRadius: BorderRadius.circular(
                                  Applayout.getHeight(18.0)),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: Applayout.getHeight(15.0),
                                horizontal: Applayout.getHeight(15.0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Discount\nfor survey',
                                  style: Styles.headLineStyle2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Gap(Applayout.getHeight(10.0)),
                                Text(
                                  'Take the survey about our services and get discount',
                                  style: Styles.headLineStyle2.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            right: -45,
                            top: -40,
                            child: Container(
                              padding:
                                  EdgeInsets.all(Applayout.getHeight(30.0)),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18.0,
                                    color: const Color(0xff189999)),
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Gap(Applayout.getHeight(15.0)),
                      Container(
                        width: size.width * 0.44,
                        height: Applayout.getHeight(210.0),
                        padding: EdgeInsets.symmetric(
                            vertical: Applayout.getHeight(15.0),
                            horizontal: Applayout.getHeight(15.0)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                Applayout.getHeight(18.0)),
                            color: const Color(0xffec6545)),
                        child: Column(
                          children: [
                            Text(
                              'Take love',
                              style: Styles.headLineStyle2.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Gap(Applayout.getHeight(5.0)),
                            RichText(
                                text: const TextSpan(children: [
                              TextSpan(
                                  text: '😍', style: TextStyle(fontSize: 30.0)),
                              TextSpan(
                                  text: '🥰', style: TextStyle(fontSize: 40.0)),
                              TextSpan(
                                  text: '😘', style: TextStyle(fontSize: 30.0))
                            ])),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

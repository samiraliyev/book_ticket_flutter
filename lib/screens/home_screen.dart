import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/wigdets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const Gap(40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good morning',
                        style: Styles.headLineStyle3,
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Book Tickets',
                        style: Styles.headLineStyle1,
                      ),
                    ],
                  ),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage('assets/images/im1.png'),
                      ),
                    ),
                  )
                ],
              ),
              const Gap(20.0),
              // for search

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: TextField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(
                      FluentSystemIcons.ic_fluent_search_regular,
                      color: Colors.grey,
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
              const Gap(40.0),
              const AppDoubleTextWidget(
                  bigText: 'Upcoming flights', linkText: 'View all'),
            ],
          ),
        ),
        // for tickets
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: ticketList
                .map((singleTicket) => TicketView(ticket: singleTicket))
                .toList(),
          ),
        ),
        const Gap(15.0),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: const AppDoubleTextWidget(
              bigText: 'Hotels', linkText: 'View all'),
        ),
        const Gap(15.0),
        // for hotels view
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
              children: hotelList
                  .map((singleHotel) => HotelScreen(hotel: singleHotel))
                  .toList()),
        ),
      ]),
    );
  }
}

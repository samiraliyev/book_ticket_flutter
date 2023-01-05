import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/wigdets/layout_builder_widget.dart';
import 'package:booktickets/wigdets/ticket_column_layout.dart';
import 'package:booktickets/wigdets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                vertical: Applayout.getHeight(20.0),
                horizontal: Applayout.getHeight(20.0)),
            children: [
              Gap(Applayout.getHeight(40.0)),
              Text(
                'Ticket',
                style: Styles.headLineStyle1,
              ),
              Gap(Applayout.getHeight(20.0)),
              const AppTicketTab(firstTab: 'Upcoming', secondTab: 'Previous'),
              Gap(Applayout.getHeight(20.0)),
              Container(
                width: size.width,
                padding: EdgeInsets.only(left: Applayout.getHeight(15.0)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 15.0),
                margin: const EdgeInsets.symmetric(horizontal: 15.0),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: 'Samir Aliyev',
                          secontText: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: '324 545346556',
                          secontText: 'Passport',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        )
                      ],
                    ),
                    Gap(Applayout.getHeight(20.0)),
                    const AppLayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                      width: 5.0,
                    ),
                    Gap(Applayout.getHeight(20.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: '4543 0932485',
                          secontText: 'Number of E-ticket',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: 'B2SG28',
                          secontText: 'Booking code',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        )
                      ],
                    ),
                    Gap(Applayout.getHeight(20.0)),
                    const AppLayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                      width: 5.0,
                    ),
                    Gap(Applayout.getHeight(20.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/visa.png',
                                  scale: 11.0,
                                ),
                                Text(
                                  '**** 5360',
                                  style: Styles.headLineStyle3,
                                )
                              ],
                            ),
                            const Gap(5.0),
                            Text(
                              'Payment method',
                              style: Styles.headLineStyle4,
                            ),
                          ],
                        ),
                        const AppColumnLayout(
                          firstText: '\$299.99',
                          secontText: 'Price',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // for barcode
              const SizedBox(
                height: 1,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(Applayout.getHeight(21.0)),
                        bottomLeft:
                            Radius.circular(Applayout.getHeight(21.0)))),
                padding: EdgeInsets.only(
                    top: Applayout.getHeight(15.0),
                    bottom: Applayout.getHeight(15.0)),
                margin: EdgeInsets.only(
                    left: Applayout.getHeight(15.0),
                    right: Applayout.getHeight(15.0)),
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Applayout.getHeight(15.0)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(Applayout.getHeight(15.0)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://github.com/samiraliyev',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70.0,
                    ),
                  ),
                ),
              ),
              Gap(Applayout.getHeight(20.0)),

              Container(
                width: size.width,
                padding: EdgeInsets.only(left: Applayout.getHeight(15.0)),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          // for two left - right container dots
          Positioned(
            top: Applayout.getHeight(295.0),
            left: Applayout.getHeight(22.0),
            child: Container(
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4.0,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            top: Applayout.getHeight(295.0),
            right: Applayout.getHeight(22.0),
            child: Container(
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4.0,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

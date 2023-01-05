// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:booktickets/wigdets/layout_builder_widget.dart';
import 'package:booktickets/wigdets/ticket_column_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/wigdets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({
    Key? key,
    required this.ticket,
    this.isColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return SizedBox(
      width: size.width * 0.87,
      height: Applayout.getHeight(167.0),
      child: Container(
        margin: EdgeInsets.only(right: Applayout.getHeight(16.0)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xff526799) : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Applayout.getHeight(21.0)),
                  topRight: Radius.circular(Applayout.getHeight(21.0)),
                ),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                      Expanded(child: Container()),
                      const ThickContainer(
                        isColor: true,
                      ),
                      // airplane icon inside two dots
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: Applayout.getHeight(24.0),
                            child: const AppLayoutBuilderWidget(sections: 6),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: isColor == null
                                    ? Colors.white
                                    : const Color(0xff8accf7),
                              ),
                            ),
                          ),
                        ],
                      )),

                      const ThickContainer(
                        isColor: true,
                      ),
                      Expanded(child: Container()),
                      Text(
                        ticket['to']['code'],
                        style: isColor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: Applayout.getWidth(100.0),
                        child: Text(
                          ticket['from']['name'],
                          style: isColor == null
                              ? Styles.headLineStyle4.copyWith(
                                  color: Colors.white,
                                )
                              : Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColor == null
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      ),
                      SizedBox(
                        width: Applayout.getWidth(100.0),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headLineStyle4.copyWith(
                                  color: Colors.white,
                                )
                              : Styles.headLineStyle4,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            // orange color of ticket/card
            Container(
              // color: const Color(0xfff37b67),
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: Applayout.getHeight(20.0),
                    width: Applayout.getWidth(10.0),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.grey.shade200
                                : Colors.white,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            ))),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    width: 5.0,
                                    height: 1.0,
                                    child: DecoratedBox(
                                        decoration: BoxDecoration(
                                      color: isColor == null
                                          ? Colors.white
                                          : Colors.grey.shade200,
                                    )),
                                  )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: 20.0,
                    width: 10.0,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? Colors.grey.shade200
                                : Colors.white,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                            ))),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == null ? 21.0 : 0),
                  bottomRight: Radius.circular(isColor == null ? 21.0 : 0),
                ),
              ),
              padding: const EdgeInsets.only(
                  left: 16.0, top: 10.0, right: 16.0, bottom: 16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: ticket['date'],
                        secontText: 'Date',
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      AppColumnLayout(
                        firstText: ticket['departure_time'],
                        secontText: 'Departure time',
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      AppColumnLayout(
                        firstText: ticket['number'],
                        secontText: 'Number',
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

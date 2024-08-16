import 'package:flutter/material.dart';
import 'package:ticket_app/ui/pages/tickets/all_tickets_widget.dart';
import 'package:ticket_app/utils/text_styles.dart';
import '../../../utils/app_colors.dart';
import '../../components/app_layout_builder/app_layout_builder_widget.dart';

class TicketsViewWidget extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;

  const TicketsViewWidget(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 170,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            // Blue part of the ticket
            Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: isColor == null ? AppColors.ticketBlue : Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21)),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          textStyle2(ticket["from"]["code"], isColor: isColor),
                          Expanded(child: Container()),
                          ticketDots(isColor),
                          Expanded(
                              child: Stack(
                            children: [
                              const SizedBox(
                                  height: 25,
                                  child: AppLayoutBuilderWidget(
                                    randomDivider: 6,
                                  )),
                              Center(
                                child: Transform.rotate(
                                  angle: 1.57,
                                  child: Icon(
                                    Icons.local_airport_rounded,
                                    color: isColor == null
                                        ? Colors.white
                                        : AppColors.expandedIconColor,
                                  ),
                                ),
                              )
                            ],
                          )),
                          ticketDots(isColor),
                          Expanded(child: Container()),
                          textStyle2(ticket["to"]["code"],
                              align: TextAlign.end, isColor: isColor),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: textStyle3(ticket["from"]["name"],
                                isColor: isColor),
                          ),
                          Expanded(child: Container()),
                          textStyle3(ticket["flying_time"], isColor: isColor),
                          Expanded(child: Container()),
                          SizedBox(
                              width: 100,
                              child: textStyle3(ticket["to"]["name"],
                                  align: TextAlign.end, isColor: isColor)),
                        ],
                      ),
                    ])),

            // Circles and dots
            Container(
                color: isColor == null ? AppColors.ticketOrange : Colors.white,
                child: Row(children: [
                  ticketCircle(false, isColor: isColor),
                  Expanded(
                      child: AppLayoutBuilderWidget(
                    randomDivider: 16,
                    width: 10,
                    isColor: isColor,
                  )),
                  ticketCircle(true, isColor: isColor)
                ])),

            // Orange part of the ticket
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              decoration: BoxDecoration(
                  color:
                      isColor == null ? AppColors.ticketOrange : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: isColor == null
                          ? const Radius.circular(21)
                          : const Radius.circular(0),
                      bottomRight: isColor == null
                          ? const Radius.circular(21)
                          : const Radius.circular(0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      columnTextLayout(ticket["date"], "DATE",
                          alignment: CrossAxisAlignment.start,
                          isColor: isColor),
                      columnTextLayout(
                          ticket["departure_time"], "Departure Time",
                          alignment: CrossAxisAlignment.center,
                          isColor: isColor),
                      columnTextLayout(ticket["number"].toString(), "NUMBER",
                          alignment: CrossAxisAlignment.end, isColor: isColor),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

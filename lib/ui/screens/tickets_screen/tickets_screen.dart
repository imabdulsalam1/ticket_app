import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/json/ticket_json.dart';
import 'package:ticket_app/ui/components/app_layout_builder/app_layout_builder_widget.dart';
import 'package:ticket_app/ui/pages/tickets/all_tickets_widget.dart';
import 'package:ticket_app/ui/pages/tickets/ticket.dart';
import 'package:ticket_app/ui/screens/search_page/search_widgets/all_search_screen_widgets.dart';
import 'package:ticket_app/ui/screens/tickets_screen/widgets/circle_positioned.dart';
import 'package:ticket_app/utils/app_colors.dart';
import 'package:ticket_app/utils/global_widgets.dart';
import 'package:ticket_app/utils/img_path/img_path.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketsScreenState();
}

class _TicketsScreenState extends State<TicketScreen> {
  late int ticketIndex = 0;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args is Map) {
      ticketIndex = args["index"] ?? 0;
    } else {
      ticketIndex = 0;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: reusableText("Booked Tickets",
              fontWeight: FontWeight.bold, fontSize: 26),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              children: [
                tabs(context, "Upcoming", "Previous"),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TicketsViewWidget(
                      ticket: ticketList[ticketIndex],
                      isColor: true,
                      wholeScreen: true,
                    )),
                SizedBox(
                  height: size.height * 0.002,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    color: Colors.white,
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          columnTextLayout("Abdul Salam", "Passenger",
                              alignment: CrossAxisAlignment.start,
                              isColor: true),
                          columnTextLayout("1512 52155", "Passport",
                              alignment: CrossAxisAlignment.end, isColor: true),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      const AppLayoutBuilderWidget(
                        randomDivider: 15,
                        width: 10,
                        isColor: true,
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: size.width * .40,
                            child: columnTextLayout(
                                "2345 5555 4445", "E-Ticket Number",
                                alignment: CrossAxisAlignment.start,
                                isColor: true,
                                maxLines: 1),
                          ),
                          columnTextLayout("B2SG28", "Booking Code",
                              alignment: CrossAxisAlignment.end,
                              isColor: true,
                              maxLines: 1),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      const AppLayoutBuilderWidget(
                        randomDivider: 15,
                        width: 10,
                        isColor: true,
                      ),
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(ImgPath.visaCard, scale: 11),
                                    reusableText("*** 2465"),
                                  ],
                                ),
                                reusableText("Payment Method",
                                    color: Colors.grey.shade500,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ],
                            ),
                            Column(children: [
                              columnTextLayout("₹ 24,556", "Price",
                                  alignment: CrossAxisAlignment.end,
                                  isColor: true),
                            ])
                          ])
                    ])),
                SizedBox(
                  height: size.height * 0.002,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(21),
                          bottomRight: Radius.circular(21))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: BarcodeWidget(
                        height: size.height * 0.1,
                        data: "Abdul Salam",
                        barcode: Barcode.code128(),
                        drawText: false,
                        color: AppColors.homeScreenTxtColor,
                        width: double.infinity,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                // Colourful Ticket
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TicketsViewWidget(
                      ticket: ticketList[ticketIndex],
                      // isColor: true,
                      wholeScreen: true,
                    )),
                SizedBox(
                  height: size.height * 0.02,
                )
              ],
            ),
            circlePositioned(context, true),
            circlePositioned(context, false)
          ],
        ));
  }
}

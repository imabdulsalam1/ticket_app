import 'package:flutter/material.dart';
import 'package:ticket_app/json/ticket_json.dart';
import 'package:ticket_app/ui/pages/tickets/ticket.dart';
import 'package:ticket_app/utils/app_colors.dart';
import 'package:ticket_app/utils/global_widgets.dart';

class ShowAllTickets extends StatelessWidget {
  const ShowAllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBgColor,
        centerTitle: true,
        title: reusableText("All Tickets",
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 22),
      ),
      body: ListView(
        children: ticketList
            .map((singleTicket) => Column(
                  children: [
                    TicketsViewWidget(
                      ticket: singleTicket,
                      wholeScreen: true,
                    ),
                    SizedBox(height: size.height * .015),
                  ],
                ))
            .toList(),
      ),
    );
  }
}

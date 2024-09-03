import 'package:flutter/material.dart';
import 'package:ticket_app/json/hotel_json.dart';
import 'package:ticket_app/ui/pages/hotels/view_hotel_widget.dart';
import 'package:ticket_app/utils/global_widgets.dart';

class HotelPage extends StatefulWidget {
  const HotelPage({super.key});

  @override
  State<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return  Scaffold(
      appBar: AppBar(title: Row(
          children:[
            SizedBox(width: size.width * 0.18,),
            reusableText("Hotel List",fontWeight: FontWeight.w600,fontSize: 22,)])),
      body: ListView.builder(
        itemCount: hotelList.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(left: 16.0,right: 0,bottom: 16),
          child: hotelWidget(context, hotel: hotelList[index]),
        )
      ),
    );
  }
}

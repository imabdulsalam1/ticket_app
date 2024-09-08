import 'package:flutter/material.dart';
import 'package:ticket_app/app_routes/app_routes.dart';
import 'package:ticket_app/json/hotel_json.dart';
import 'package:ticket_app/ui/pages/hotels/view_hotel_widget.dart';
import 'package:ticket_app/utils/global_widgets.dart';

class GridHotelPage extends StatefulWidget {
  const GridHotelPage({super.key});

  @override
  State<GridHotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<GridHotelPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final childAspectRatio = (size.width / 1.65) / (size.height * 0.38);

    return Scaffold(
      appBar: AppBar(
        title: reusableText(
          "Hotel List",
          fontWeight: FontWeight.w600,
          fontSize: 22,
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          childAspectRatio: childAspectRatio,
        ),
        itemCount: hotelList.length,
        itemBuilder: (context, index) {
          var singleHotel = hotelList[index];
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                AppRoutes.hotelDetail,
                arguments: {"index": index}
              );
              // print("Tapped on Index $index");
            },
            child: Container(
              // height: size.height * 0.001,
              margin: const EdgeInsets.only(left: 16.0,bottom: 20),
              child: hotelWidget(
                context,
                hotel: singleHotel,
              )
            )
          );
        },
      ),
    );
  }
}

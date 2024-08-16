import 'package:flutter/material.dart';
import 'package:ticket_app/json/hotel_json.dart';
import 'package:ticket_app/ui/pages/hotels/expanded_text_widget.dart';
import 'package:ticket_app/utils/app_colors.dart';
import 'package:ticket_app/utils/global_widgets.dart';

class HotelDetails extends StatefulWidget {
  const HotelDetails({super.key});

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  late int index;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args =
    ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
    if (args == null || !args.containsKey('index')) {
      Navigator.pop(context);
      return;
    }

    index = args['index'];
  }

  @override
  Widget build(BuildContext context) {
    final hotel = hotelList[index];

    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        "assets/hotel_images/${hotel["image"]}",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 50,
                      right: 50,
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          color: Colors.black.withOpacity(0.2),
                          child: Text(
                            hotel["place"] ?? "Hotel Detail",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: AppColors.appBgColor,
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: AppColors.primaryColor,
                                  offset: Offset(2.0, 2.0),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ExpandedTextWidget(
                    text: hotel["description"] ?? "",
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: reusableText(
                    "More Images",
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 200.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hotel["images"].length,
                    itemBuilder: (context, imgIndex) {
                      return Container(
                        margin: const EdgeInsets.all(16),
                        color: Colors.red,
                        child: Image.network(hotel["images"][imgIndex]),
                      );
                    },
                  ),
                )
              ]),
            ),
          ],
        ));
  }
}


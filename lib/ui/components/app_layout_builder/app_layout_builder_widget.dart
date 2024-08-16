import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomDivider;
  final double width;
  final bool? isColor;

  const AppLayoutBuilderWidget({super.key, required this.randomDivider,this.width = 3,this.isColor});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (kDebugMode) {
        print("${constraints.constrainWidth().floor()}");
      }

      return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / randomDivider).floor(),
            (index) => Container(
              width: width,
              height: 1,
              color: isColor==null?Colors.white:Colors.grey.shade500,
            ),
          ));
    });
  }
}

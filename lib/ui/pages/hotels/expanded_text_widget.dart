import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/utils/app_colors.dart';
import 'package:ticket_app/utils/global_widgets.dart';

class ExpandedTextWidget extends StatefulWidget {
  final String text;

  const ExpandedTextWidget({super.key, required this.text});

  @override
  State<ExpandedTextWidget> createState() => _ExpandedTextWidgetState();
}

class _ExpandedTextWidgetState extends State<ExpandedTextWidget> {
  bool isExpanded = false;

  void toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
      if (kDebugMode) {
        print("The value is $isExpanded");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        widget.text,
        maxLines: isExpanded ? null : 10,
        overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
      ),
      GestureDetector(
          onTap: toggleExpansion,
          child: reusableText(
            isExpanded ? "Less" : "More",
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ))
    ]);
  }
}

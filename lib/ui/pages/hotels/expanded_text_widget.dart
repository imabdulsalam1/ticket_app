import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/controller/expanded_text_controller.dart';
import 'package:ticket_app/utils/app_colors.dart';
import 'package:ticket_app/utils/global_widgets.dart';

class ExpandedTextWidget extends StatelessWidget {
  ExpandedTextWidget({super.key, required this.text});
  final String text;

  final TextExpansionController controller = Get.put(TextExpansionController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          text,
          maxLines: controller.isExpanded.value ? null : 9,
          overflow: controller.isExpanded.value
              ? TextOverflow.visible
              : TextOverflow.ellipsis,
        ),
        GestureDetector(
            onTap: controller.toggleExpansion,
            child: reusableText(
              controller.isExpanded.value ? "Less" : "More",
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ))
      ]);
    });
  }
}

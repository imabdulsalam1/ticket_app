import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:ticket_app/controller/expanded_text_controller.dart';
import 'package:ticket_app/provider/text_expansion_provider.dart';
import 'package:ticket_app/utils/app_colors.dart';
import 'package:ticket_app/utils/global_widgets.dart';

class ExpandedTextWidget extends ConsumerWidget {
  const ExpandedTextWidget({super.key, required this.text});
  final String text;

  // Using GetX
  // final TextExpansionController controller = Get.put(TextExpansionController());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Using RiverPod
  var provider = ref.watch(textExpansionNotifierProvider);
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        text,
        maxLines: provider ? null : 9,
        overflow: provider
            ? TextOverflow.visible
            : TextOverflow.ellipsis,
      ),
      GestureDetector(
          onTap: (){
            ref.watch(textExpansionNotifierProvider.notifier).toggleText(provider);
          },
          child: reusableText(
            provider ? "Less" : "More",
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ))
    ]);
  }
}

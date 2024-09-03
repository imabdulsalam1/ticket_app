import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class TextExpansionController extends GetxController{

  var isExpanded = false.obs;

  void toggleExpansion() {

      isExpanded.value = !isExpanded.value;
      if (kDebugMode) {
        print("The value is $isExpanded");
      }
  }

}
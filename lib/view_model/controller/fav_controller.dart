import 'dart:ui';

import 'package:get/get.dart';

class FavController extends GetxController {
  var isSelected = false.obs;
  // gradient color

  final selectedGradient = const [Color(0xff34C8E8), Color(0xff4E4AF2)];

  //
  void toggleSelection() {
    isSelected.value = !isSelected.value;
  }
}

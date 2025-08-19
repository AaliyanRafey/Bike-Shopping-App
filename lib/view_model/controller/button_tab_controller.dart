import 'package:get/get.dart';

class ButtonTabController extends GetxController {
  // 0 = none pressed, 1= description, 2= specification
  var selectedIndex = 0.obs;

  void selectedTab(int index) {
    selectedIndex.value = index;
  }
}

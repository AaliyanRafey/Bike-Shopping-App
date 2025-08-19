import 'package:get/get.dart';

class SliderController extends GetxController {
  var currentPage = 0.obs;

  void updatePage(int index) {
    currentPage.value = index;
  }
}

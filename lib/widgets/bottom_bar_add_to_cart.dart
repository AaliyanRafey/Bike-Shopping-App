import 'package:bike_shopping_app/res/routes/routes_name.dart';
import 'package:bike_shopping_app/view_model/controller/button_tab_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BottomBarAddToCart extends StatelessWidget {
  final ButtonTabController controller = Get.put(ButtonTabController());
  BottomBarAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff353F54), Color(0xff222834)],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButton('Description', 1),
          buildButton('Specification', 2),
        ],
      ),
    );
  }

  Widget buildButton(String text, int index) {
    return Obx(() {
      bool isSelected = controller.selectedIndex.value == index;
      return GestureDetector(
        onTap: () {
          controller.selectedTab(index);
          if (index == 1) Get.toNamed(RoutesName.addToCart2);
        },
        child: Container(
          height: 48.h,
          width: 145.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isSelected ? Color(0xff323B4F) : Color(0xff28303F),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      offset: Offset(4, 4),
                      blurRadius: 10,
                      color: Color(0xff252B39),
                    ),
                    BoxShadow(
                      offset: Offset(-4, -4),
                      blurRadius: 10,
                      color: Color(0xff38445A),
                    ),
                  ]
                : [
                    BoxShadow(
                      offset: Offset(4, 4),
                      color: Color(0xff202633),
                      blurRadius: 8,
                    ),
                    BoxShadow(
                      offset: Offset(4, 4),
                      color: Color(0xff364055),
                      blurRadius: 8,
                    ),
                  ],
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: isSelected ? FontWeight.w800 : FontWeight.w200,
                color: isSelected
                    ? Color(0xff3CA4EB)
                    : Color(0xffFFFFFF).withOpacity(0.5),
                fontSize: 13.sp,
              ),
            ),
          ),
        ),
      );
    });
  }
}

import 'package:bike_shopping_app/view_model/controller/button_tab_controller.dart';
import 'package:bike_shopping_app/widgets/bottom_bar__add_to_cart.dart';
import 'package:bike_shopping_app/widgets/image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddToCart2 extends StatelessWidget {
  final ButtonTabController controller = Get.put(ButtonTabController());

  AddToCart2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff252D3C),
      body: Stack(
        children: [
          // 🔹 Background
          Positioned.fill(
            right: -65.w,
            child: Image.asset('assets/images/bg.png', fit: BoxFit.cover),
          ),

          // 🔹 Main scrollable content
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Top bar
                  Padding(
                    padding: EdgeInsets.all(18.r),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: Container(
                            height: 44.h,
                            width: 44.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              gradient: const LinearGradient(
                                colors: [Color(0xff34C8E8), Color(0xff4E4AF2)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 1.w),
                              child: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Colors.white,
                                size: 30.r,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 55.w),
                        Text(
                          'PEUGEOT - LR01',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Poppins',
                            fontSize: 22.sp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Bike image slider
                  ImageSlider(),
                  SizedBox(height: 20.h),

                  // 🔹 600-height description/specification box
                  Container(
                    height: 600.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r),
                      ),
                      gradient: LinearGradient(
                        colors: [Color(0xff353F54), Color(0xff222834)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Column(
                      children: [
                        // Tabs
                        SizedBox(
                          height: 100.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildButton('Description', 1),
                              buildButton('Specification', 2),
                            ],
                          ),
                        ),

                        // Reactive content
                        Expanded(
                          child: Obx(() {
                            if (controller.selectedIndex.value == 1) {
                              return Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'PEUGEOT - LR01',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    SizedBox(height: 15.h),
                                    Text(
                                      "The LR01 uses the same design as the most iconic bikes from PEUGEOT Cycles' 130-year history and combines it with agile, dynamic performance that's perfectly suited to navigating today's cities. As well as a lugged steel frame and iconic PEUGEOT black-and-white chequer design, this city bike also features a 16-speed Shimano Claris drivetrain.",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.4),
                                        fontSize: 15.sp,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            } else {
                              return Padding(
                                padding: EdgeInsets.only(right: 140.w),
                                child: Text(
                                  "Specifications:\n- Frame: Aluminum\n- Gear: 21 Speed\n- Wheels: 700c\n- Weight: 9kg",
                                  style: TextStyle(
                                    fontFamily: 'PoppinL',
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 12.sp,
                                  ),
                                ),
                              );
                            }
                          }),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // 🔹 FIX: Bottom bar overlayed on the Scaffold bottom
          Positioned(
            left: 0.w,
            right: 0.w,
            bottom: 0.h,
            child: BottomBarAddToCart2(),
          ),
        ],
      ),
    );
  }

  Widget buildButton(String text, int index) {
    return Obx(() {
      bool isSelected = controller.selectedIndex.value == index;
      return GestureDetector(
        onTap: () => controller.selectedTab(index),
        child: Container(
          height: 36,
          width: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: isSelected
                ? const Color(0xff323B4F)
                : const Color(0xff28303F).withOpacity(0.4),
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
                fontFamily: isSelected ? 'Poppins' : 'PoppinL',
                fontWeight: isSelected ? FontWeight.w500 : FontWeight.w200,
                color: isSelected
                    ? const Color(0xff3CA4EB)
                    : Colors.white.withOpacity(0.3),
                fontSize: 13.sp,
              ),
            ),
          ),
        ),
      );
    });
  }
}

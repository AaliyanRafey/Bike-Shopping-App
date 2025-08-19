import 'package:bike_shopping_app/view_model/controller/slider_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ImageSlider extends StatelessWidget {
  final SliderController sliderController = Get.put(SliderController());

  //List for Images
  final List<String> images = [
    'assets/images/c3.png',
    'assets/images/c3.png',
    'assets/images/c3.png',
  ];

  ImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // PageView
        SizedBox(
          height: 190.h,
          child: PageView.builder(
            itemCount: images.length,
            onPageChanged: (index) {
              sliderController.updatePage(index);
            },
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(30.r),
                child: Image.asset(
                  images[index],
                  fit: BoxFit.fitHeight,
                  width: 70.w,
                  height: 70.h,
                ),
              );
            },
          ),
        ),
        SizedBox(height: 10.h),
        // Reactive dots
        Obx(() {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(images.length, (index) {
              bool isActive = sliderController.currentPage.value == index;
              return Container(
                margin: EdgeInsets.all(3.r),
                height: isActive ? 6.h : 4.h,
                width: isActive ? 6.h : 4.h,
                decoration: BoxDecoration(
                  color: isActive
                      ? const Color(0xffffffff)
                      : const Color(0xffffffff).withOpacity(0.4),
                  shape: BoxShape.circle,
                ),
              );
            }),
          );
        }),
      ],
    );
  }
}

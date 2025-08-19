import 'package:bike_shopping_app/res/routes/routes_name.dart';
import 'package:bike_shopping_app/view_model/controller/button_tab_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

class BottomBarAddToCart2 extends StatelessWidget {
  final ButtonTabController controller = Get.put(ButtonTabController());
  BottomBarAddToCart2({super.key});

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
          topLeft: Radius.circular(35.r),
          topRight: Radius.circular(35.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '\$ 1999.99',
            style: TextStyle(
              fontFamily: 'PoppinL',
              color: Color(0xff3D9CEA),
              fontWeight: FontWeight.w100,
              fontSize: 18.sp,
            ),
          ),
          GestureDetector(
            onTap: () => Get.toNamed(RoutesName.shoppingCartView),
            child: Container(
              height: 45.h,
              width: 145.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 106, 104, 240),
                    Color(0xff34C8E8),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Center(
                child: Text(
                  'Add to Cart',
                  style: TextStyle(
                    fontFamily: 'PoppinL',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w900,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

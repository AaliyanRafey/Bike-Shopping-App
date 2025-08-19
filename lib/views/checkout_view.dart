import 'package:bike_shopping_app/res/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff252D3C),
      body: SafeArea(
        child: Column(
          children: [
            // Top bar
            Padding(
              padding: EdgeInsets.all(18.r),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Get.toNamed(RoutesName.homeView),
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
                        padding: EdgeInsets.only(left: 5.0.w),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 15.r,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 78.w),
                  Text(
                    'CheckOut',
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

            Container(
              height: 254.h,
              width: 340.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                gradient: LinearGradient(
                  colors: [Color(0xff363E51), Color(0xff4C5770)],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(24.r),
                child: Text(
                  'Shipping\nAddress',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16.sp,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appBar() {
  return Padding(
    padding: EdgeInsets.all(18.r),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Choose Your Bike',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            color: Color(0xffFFFFFF),
          ),
        ),
        GestureDetector(
          child: Container(
            height: 44.h,
            width: 44.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,

                colors: [Color(0xff34C8E8), Color(0xff4E4AF2)],
              ),
            ),
            child: Center(
              child: Image.asset(
                'assets/images/s.png',
                filterQuality: FilterQuality.high,
                height: 15.h,
                width: 15.w,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

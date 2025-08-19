import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget thirtyOff() {
  return Transform(
    transform: Matrix4.identity()
      ..setEntry(3, 2, 0.001) // Perspective
      ..rotateX(0.12) // Adjust rotation as needed
      ..rotateY(-0.5), // Adjust rotation as needed
    alignment: Alignment.center,
    child: Padding(
      padding: EdgeInsets.only(left: 10.w),
      child: Container(
        width: 450.w,
        height: 210.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF2d3647),
              Color(0xFF353F54).withOpacity(0.96),
            ], // Adjust colors as needed
          ),
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: Color(0XFF11141d).withOpacity(0.2),
            width: 1.5.w,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 2), // Adjust shadow as needed
            ),
          ],
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Transform(
                transform: Matrix4.identity()
                  ..rotateX(-0.11) // Inverse rotation
                  ..rotateY(0.6), // Inverse rotation
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/c1.png',
                  fit: BoxFit.fitWidth,
                  filterQuality: FilterQuality.high,
                  height: 193.h,
                  width: 256.81817626953125.w,
                ),
              ),
            ),
            Positioned(
              bottom: 18.h,
              left: 28.w,
              child: Transform(
                transform: Matrix4.identity()
                  ..rotateX(-0.11) // Inverse rotation
                  ..rotateY(0.6), // Inverse rotation
                alignment: Alignment.center,
                child: Text(
                  '30% Off',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                    fontSize: 20.sp,
                    color: Color(0xffFFFFFF).withOpacity(0.3),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

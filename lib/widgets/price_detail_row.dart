import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceDetailRow extends StatelessWidget {
  final String detail, price;
  final double? fontSize; // optional font size
  final Color? fontColor; // optional font color

  const PriceDetailRow({
    super.key,
    required this.detail,
    required this.price,
    this.fontSize,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            detail,
            style: TextStyle(
              fontFamily: 'PoppinL',
              fontSize: 14.sp, // default if not given
              color: Color(0xffFFFFFF),
            ),
          ),
          Text(
            price,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: fontSize ?? 14.sp, // default if not given
              color: fontColor ?? const Color(0xffFFFFFF).withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}

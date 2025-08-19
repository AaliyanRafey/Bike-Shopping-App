import 'package:flutter/material.dart';
import 'package:bike_shopping_app/model/container_row_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OptionContainer extends StatelessWidget {
  final ContainerRowModel model;
  final bool isSelected;
  final VoidCallback onTap;
  final int index;

  const OptionContainer({
    super.key,
    required this.model,
    required this.isSelected,
    required this.onTap,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 53.w,
        height: 53.h,
        decoration: BoxDecoration(
          gradient: isSelected
              ? const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff34C8E8), Color(0xff4E4AF2)],
                )
              : LinearGradient(colors: [model.startColor, model.endColor]),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: index == 0
            ? Center(
                child: Text(
                  'All',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w900,
                    fontSize: 14.sp,
                  ),
                ),
              )
            : Center(
                child: Image.asset(
                  model.image,
                  fit: BoxFit.cover,
                  height: 30.h,
                  width: 30.w,
                ),
              ),
      ),
    );
  }
}

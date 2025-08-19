import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'price_detail_row.dart'; // <-- import your PriceDetailRow

class ShoppingCartCoupon extends StatefulWidget {
  const ShoppingCartCoupon({super.key});

  @override
  State<ShoppingCartCoupon> createState() => _ShoppingCartCouponState();
}

class _ShoppingCartCouponState extends State<ShoppingCartCoupon> {
  final TextEditingController controller = TextEditingController();
  bool _showDetails = false;

  void _applyCoupon() {
    if (controller.text.trim().toLowerCase() == "bike") {
      setState(() => _showDetails = true);
    } else {
      setState(() => _showDetails = false);
      Get.snackbar(
        "Invalid Coupon",
        "Please enter a valid coupon code",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.black.withOpacity(0.6),
        colorText: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Coupon container
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 1.h),
          child: Container(
            height: 60.h,
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: const Color(0xff242C3B),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(4, 4),
                  color: Color(0xff202633),
                  blurRadius: 8,
                ),
                BoxShadow(
                  offset: Offset(4, 4),
                  color: Color(0xff364055),
                  blurRadius: 100,
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller,
                    cursorColor: Colors.white.withOpacity(0.4),
                    style: TextStyle(color: Colors.white, fontSize: 12.sp),
                    decoration: InputDecoration(
                      hintText: " ",
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 11.sp,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: _applyCoupon,
                  child: Container(
                    height: 80.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xff34C8E8), Color(0xff4E4AF2)],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Apply',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20.h),

        // If valid → show details, else → drag button only
        if (_showDetails) ...[
          Text(
            'Your bag qualifies for free shipping',
            style: TextStyle(
              fontSize: 13.sp,
              color: Colors.white.withOpacity(0.4),
              fontFamily: 'PoppinL',
            ),
          ),
          SizedBox(height: 10.h),
          Column(
            children: [
              PriceDetailRow(detail: 'Subtotal:', price: '\$6119.99'),
              PriceDetailRow(detail: 'Delivery fee:', price: '\$0'),
              PriceDetailRow(detail: 'Discount:', price: '30%'),
              SizedBox(height: 10),
              PriceDetailRow(
                detail: 'Total:',
                price: '\$4283.99',
                fontSize: 18.5.sp, // bigger size
                fontColor: Color(0xff38B8EA), // blue color
              ),
              SizedBox(height: 20),
            ],
          ),
        ] else ...[
          SizedBox(height: 200.h),
          // <-- your drag button widget
        ],
      ],
    );
  }
}

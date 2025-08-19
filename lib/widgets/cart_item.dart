import 'package:bike_shopping_app/model/product_model.dart';
import 'package:bike_shopping_app/widgets/counter_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItem extends StatefulWidget {
  final ProductModel product;
  const CartItem({super.key, required this.product});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.r),
      child: Row(
        children: [
          Container(
            height: 90.h,
            width: 110.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff4C5770), Color(0xff363E51)],
              ),
            ),
            child: Center(
              child: Image.asset(
                widget.product.image,
                fit: BoxFit.contain,
                height: 90.h,
                width: 90.w,
              ),
            ),
          ),
          SizedBox(width: 15.w),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.product.name,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Poppins',
                  fontSize: 15.sp,
                  color: Color(0xffFFFFFF),
                ),
              ),
              SizedBox(height: 35.h),
              Row(
                children: [
                  Text(
                    widget.product.price,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontFamily: 'PoppinL',
                      fontSize: 12.sp,
                      color: Color(0xff3C9EEA),
                    ),
                  ),
                  SizedBox(width: 120.w),

                  CounterBox(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

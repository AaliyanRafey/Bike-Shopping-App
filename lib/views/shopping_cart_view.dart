import 'package:bike_shopping_app/model/product_model.dart';
import 'package:bike_shopping_app/widgets/cart_item.dart';

import 'package:bike_shopping_app/widgets/shopping_cart_coupon.dart';
import 'package:bike_shopping_app/widgets/slide_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ShoppingCartView extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  ShoppingCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff252D3C),
      body: SafeArea(
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
                        padding: EdgeInsets.only(left: 5.0.w),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 15.r,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 50.w),
                  Text(
                    'My Shopping Cart',
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

            // List of items added to cart
            Flexible(
              fit: FlexFit.loose,
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return CartItem(product: product[index]);
                },
                separatorBuilder: (context, index) => Divider(
                  color: Color(0xffFFFFFF).withOpacity(0.4),
                  thickness: 0.2,
                  indent: 5,
                  endIndent: 5,
                ),
                itemCount: product.length,
              ),
            ),

            ShoppingCartCoupon(),

            SlideButton(),
          ],
        ),
      ),
    );
  }
}

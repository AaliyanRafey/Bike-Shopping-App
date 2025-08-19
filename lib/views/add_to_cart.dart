import 'package:bike_shopping_app/res/routes/routes_name.dart';
import 'package:bike_shopping_app/widgets/bottom_bar_add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      backgroundColor: Color(0xff252D3C).withOpacity(0.7),

      body: Stack(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        children: [
          //layer 1: the baclground color
          Container(color: Color(0xff252d3c)),
          //layer 2: the image behind fro decoration
          Positioned(
            right: 2.w,
            top: 23.h,
            child: Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 1.3,
              width: MediaQuery.of(context).size.width * 1,
            ),
          ),

          // layer 3: Scrollable Content
          SafeArea(
            bottom: false,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // upper bar
                  Padding(
                    padding: EdgeInsets.all(18.r),
                    child: Row(
                      spacing: 50.w,
                      children: [
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
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w),
                              child: IconButton(
                                onPressed: () {
                                  Get.toNamed(RoutesName.homeView);
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  size: 17.r,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'PEUGEOT - LR01',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Poppins',
                            fontSize: 22.sp,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 100.h),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/c3.png',
                      fit: BoxFit.cover,
                      height: 200.h,
                      width: 300.w,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0.w,
            right: 0.w,
            bottom: 0.h,
            child: BottomBarAddToCart(),
          ),
        ],
      ),
    );
  }
}

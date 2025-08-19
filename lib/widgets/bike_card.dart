import 'package:bike_shopping_app/model/bike_model.dart';
import 'package:bike_shopping_app/res/routes/routes_name.dart';
import 'package:bike_shopping_app/view_model/controller/fav_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BikeCard extends StatelessWidget {
  final FavController _favController = Get.put(FavController());
  final BikeModel item;
  BikeCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        GestureDetector(
          onTap: () => Get.toNamed(RoutesName.addToCart),
          child: Image.asset(
            'assets/images/rec.png', // your background
            fit: BoxFit.fitHeight,
            height: 231.h,
            width: 200.w,
          ),
        ),

        // Example RichText over it
        Positioned(
          top: -2.h,
          left: 118.w,
          child: Obx(() {
            return IconButton(
              onPressed: () {
                _favController.toggleSelection();
              },
              icon: _favController.isSelected.value
                  ? ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(
                        colors: _favController.selectedGradient,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(bounds),
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                        size: 30.r,
                      ),
                    )
                  : Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 30.r,
                    ),
            );
          }),
        ),

        Positioned(
          top: 28.h,
          left: 36.w,
          child: GestureDetector(
            onTap: () => Get.toNamed(RoutesName.addToCart),
            child: Image.asset(item.image, width: 120.w, height: 120.h),
          ),
        ),

        // text
        Positioned(
          top: 145.h,
          left: 33.w,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: item.item,
                  style: TextStyle(
                    fontSize: 13.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
                TextSpan(
                  text: item.name,
                  style: TextStyle(
                    fontSize: 15.sp,

                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextSpan(
                  text: item.price,
                  style: TextStyle(
                    fontSize: 13.5.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

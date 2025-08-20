import 'package:bike_shopping_app/res/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SlideButton extends StatefulWidget {
  const SlideButton({super.key});

  @override
  State<SlideButton> createState() => _SlideButtonState();
}

class _SlideButtonState extends State<SlideButton> {
  double _position = 2.0; // current X position
  final double maxWidth = 220.w; // wider black container
  final double buttonSize = 35.r; // bigger draggable button

  @override
  Widget build(BuildContext context) {
    // Calculate fade effect (0.0 = invisible, 1.0 = fully visible)
    double fade = 1.0 - (_position / (maxWidth - buttonSize));

    final double containerHeight = 45.h; // taller container

    return Container(
      height: containerHeight,
      width: maxWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: const Color(0xff28303F),
        boxShadow: const [
          BoxShadow(
            offset: Offset(4, 4),
            color: Color(0xff202633),
            blurRadius: 8,
          ),
          BoxShadow(
            offset: Offset(-4, -4),
            color: Color(0xff364055),
            blurRadius: 100,
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Fading "Checkout" text
          Opacity(
            opacity: fade.clamp(0.0, 1.0),
            child: Text(
              "Checkout",
              style: TextStyle(
                fontFamily: "PoppinL",
                color: Colors.white.withOpacity(0.8),
                fontSize: 16.sp, // bigger text
              ),
            ),
          ),

          // Draggable button
          AnimatedPositioned(
            duration: Duration.zero, // instant movement
            left: _position,
            top: (containerHeight - buttonSize) / 2, // auto center vertically
            child: GestureDetector(
              onHorizontalDragUpdate: (details) {
                setState(() {
                  _position += details.delta.dx;

                  // Clamp between 0 and maxWidth - buttonSize
                  _position = _position.clamp(0.0, maxWidth - buttonSize);
                });
              },
              onHorizontalDragEnd: (_) {
                if (_position >= maxWidth - buttonSize - 5) {
                  // reached end → navigate
                  Get.toNamed(RoutesName.checkoutView);
                } else {
                  // snap back to start
                  setState(() => _position = 0.0);
                }
              },
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  gradient: const LinearGradient(
                    colors: [Color(0xff34C8E8), Color(0xff4E4AF2)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,
                  size: 18.sp, // bigger arrow
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

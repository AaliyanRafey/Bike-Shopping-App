import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBNB extends StatefulWidget {
  const CustomBNB({super.key});

  @override
  State<CustomBNB> createState() => _CustomBNBState();
}

class _CustomBNBState extends State<CustomBNB> {
  int selectedIndex = 0;

  final List<String> icons = [
    "assets/icons/cycle.svg",
    "assets/icons/map.svg",
    "assets/icons/cart.svg",
    "assets/icons/doc.svg",
    "assets/icons/person.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h, // slightly bigger to allow floating
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          // Bottom Bar Background
          Container(
            height: 70.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.r),
                bottomRight: Radius.circular(5.r),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff353F54), Color(0xff222834)],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(icons.length, (index) {
                final bool isSelected = index == selectedIndex;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: SizedBox(
                    width: 60.w,
                    height: 70.h,
                    child: Center(
                      child: SvgPicture.asset(
                        icons[index],
                        width: 18.w,
                        color: isSelected
                            ? Colors.transparent
                            : Colors.grey[400],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),

          // Floating Highlight
          Positioned(
            bottom: 30.h, // push above bar
            left:
                (MediaQuery.of(context).size.width / icons.length) *
                    selectedIndex +
                10, // adjust based on index
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 250),
              opacity: 1,
              child: Transform(
                transform: Matrix4.skewX(-0.2),
                child: Container(
                  width: 55.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xff34C8E8), Color(0xff4E4AF2)],
                    ),
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      icons[selectedIndex],
                      width: 25.w,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

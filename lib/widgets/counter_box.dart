import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// Controller for counter
class CounterController extends GetxController {
  var count = 1.obs;

  void increment() => count++;
  void decrement() {
    if (count > 0) count--;
  }
}

class CounterBox extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());

  CounterBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      width: 72.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r), // radius = 5
        color: const Color(0xff242C3B),
        boxShadow: const [
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 4,
            color: Color(0xff1E2531),
          ),
          BoxShadow(
            offset: Offset(-2, -2),
            blurRadius: 4,
            color: Color(0xff273041),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // centers everything
        children: [
          // Plus Button
          GestureDetector(
            onTap: controller.increment,
            child: Container(
              height: 19.h,
              width: 19.w,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xff34C8E8), Color(0xff4E4AF2)],
                ),
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Center(
                child: Icon(Icons.add_rounded, size: 18.r, color: Colors.white),
              ),
            ),
          ),

          // Number
          Obx(
            () => Text(
              '${controller.count}',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 10.sp,
                color: Colors.white.withOpacity(0.4),
              ),
            ),
          ),

          // Minus Button
          GestureDetector(
            onTap: controller.decrement,
            child: Container(
              height: 19.h,
              width: 19.w,
              decoration: BoxDecoration(
                color: const Color(0xff353F54),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Icon(
                  Icons.remove_rounded, // better than minimize_outlined
                  size: 18.r,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

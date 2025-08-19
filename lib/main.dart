import 'package:bike_shopping_app/res/routes/route.dart';
import 'package:bike_shopping_app/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // Set your design size (usually from Figma)
      designSize: Size(411, 914), // iPhone 13 size (common design mockup)
      minTextAdapt: true, // Ensures text scales responsively
      splitScreenMode: true, // Supports different screen orientations
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Bike Shopping App',
          theme: ThemeData(
            primarySwatch: Colors.blue,

            textTheme: TextTheme(
              // Optional: Set default text scaling
              bodyMedium: TextStyle(fontSize: 14.sp),
            ),
          ),
          getPages: AppRoute.appRoute(),
          home: child,
        );
      },
      child: HomeView(), // Your app's first screen
    );
  }
}

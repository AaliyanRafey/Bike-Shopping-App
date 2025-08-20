import 'package:bike_shopping_app/model/bike_model.dart';
import 'package:bike_shopping_app/widgets/30off.dart';
import 'package:bike_shopping_app/widgets/appBar.dart';
import 'package:bike_shopping_app/widgets/bike_card.dart';
import 'package:bike_shopping_app/widgets/custom_bnb.dart';
import 'package:bike_shopping_app/widgets/options_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff353F54),
      bottomNavigationBar: CustomBNB(),
      body: Stack(
        children: [
          //layer 1: the baclground color
          Container(color: Color(0xff252d3c)),
          //layer 2: the image behind fro decoration
          Positioned(
            right: 5,
            top: 143,
            child: Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height * 0.90,
              width: MediaQuery.of(context).size.width * 0.88,
            ),
          ),

          // layer 3: Scrollable Content
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  appBar(),
                  SizedBox(height: 5.h),
                  thirtyOff(),
                  SizedBox(height: 15.h),
                  OptionRow(),
                  SizedBox(height: 10.h),

                  // Wrap GridView in a fixed-height box so it doesn’t conflict with scroll
                  GridView.builder(
                    shrinkWrap:
                        true, // important: makes GridView take only as much space as it needs
                    physics:
                        NeverScrollableScrollPhysics(), // disable inner scroll, let parent scroll
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 0.3,
                          mainAxisSpacing: 2,
                          childAspectRatio: 0.9,
                        ),
                    itemCount: bikeItems.length,
                    itemBuilder: (context, index) {
                      return BikeCard(item: bikeItems[index]);
                    },
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

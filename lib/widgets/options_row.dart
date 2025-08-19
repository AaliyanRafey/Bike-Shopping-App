import 'package:flutter/material.dart';
import 'package:bike_shopping_app/model/container_row_model.dart';
import 'package:bike_shopping_app/widgets/option_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OptionRow extends StatefulWidget {
  const OptionRow({super.key});

  @override
  State<OptionRow> createState() => _OptionRowState();
}

class _OptionRowState extends State<OptionRow> {
  int selectedIndex = -1; // no selection at start

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32.w),
      child: Transform.rotate(
        angle: -0.1,
        child: Row(
          children: List.generate(
            containerModel.length,
            (index) => Padding(
              padding: EdgeInsets.all(8.sp),
              child: OptionContainer(
                model: containerModel[index],
                index: index,
                isSelected: selectedIndex == index,
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

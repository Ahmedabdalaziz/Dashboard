import 'package:dash_board/core/helper/spacing.dart';
import 'package:dash_board/core/theming/color.dart';
import 'package:dash_board/core/theming/style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewCasesToday extends StatelessWidget {
  final double width;
  final double height;
  final bool bottom;
  final bool percent;

  const NewCasesToday(
      {super.key,
      required this.width,
      required this.height,
      required this.bottom,
      required this.percent});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26.r),
        color: ColorsManager.backGreen,
      ),
      child: Column(
        children: [
          verticalSpace(10.h),
          Row(
            children: [
              SizedBox(
                width: 30.w,
                height: 30.h,
                child: Image.asset("assets/png/new_cases_today.png"),
              ),
              horizontalSpace(10.w),
              Text(
                'New Cases Today',
                style: CairoTextStyles.semiBold.copyWith(
                  color: ColorsManager.whiteWithGreen,
                  fontSize: 5.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
    ;
  }
}

import 'package:dash_board/core/helper/spacing.dart';
import 'package:dash_board/core/theming/color.dart';
import 'package:dash_board/core/theming/style_manager.dart';
import 'package:dash_board/features/home/ui/screens/home_background.dart';
import 'package:dash_board/features/home/ui/widgets/new_cases_today.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return HomeBackground(
        child: Column(
      children: [
        Row(
          children: [
            Text(
              "Nabta DashBoard",
              style: CairoTextStyles.black
                  .copyWith(fontSize: 40.sp, color: ColorsManager.secondGreen),
            ),
          ],
        ),
        Row(
          children: [
            horizontalSpace(16.h),
            NewCasesToday(
              height: 200.h,
              width: 100.w,
              percent: true,
              bottom: true,
            ),
          ],
        )
      ],
    ));
  }
}

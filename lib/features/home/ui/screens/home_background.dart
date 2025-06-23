import 'package:dash_board/core/theming/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBackground extends StatefulWidget {
  final Widget child;

  const HomeBackground({super.key, required this.child});

  @override
  State<HomeBackground> createState() => _HomeBackgroundState();
}

class _HomeBackgroundState extends State<HomeBackground> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.secondGreen,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38.r),
                    bottomLeft: Radius.circular(38.r),
                  ),
                  color: ColorsManager.greenWhite,
                ),
                height: MediaQuery.of(context).size.height,
                width: 360.w,
              ),
              widget.child
            ],
          )
        ],
      ),
    );
  }
}

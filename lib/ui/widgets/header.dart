import 'package:dash_board/theming/color.dart';
import 'package:dash_board/theming/style_manager.dart';
import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: ColorsManager.moreWhite,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: ColorsManager.greenWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'البحث...',
                  hintStyle: CairoTextStyles.regular
                      .copyWith(color: ColorsManager.textGrey),
                  border: InputBorder.none,
                  icon: const Icon(Icons.search, color: ColorsManager.grey),
                ),
                style: CairoTextStyles.regular
                    .copyWith(color: ColorsManager.black),
              ),
            ),
          ),
          const SizedBox(width: 20),
          const Icon(Icons.notifications_none,
              color: ColorsManager.grey, size: 30),
          const SizedBox(width: 15),
          CircleAvatar(
            backgroundColor: ColorsManager.mainGreen,
            child: Text('SA',
                style: CairoTextStyles.bold
                    .copyWith(color: ColorsManager.moreWhite)),
          ),
        ],
      ),
    );
  }
}

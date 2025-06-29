// ui/widgets/sidebar.dart
import 'package:dash_board/theming/color.dart';
import 'package:dash_board/theming/style_manager.dart';
import 'package:flutter/material.dart';

class DashboardSidebar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const DashboardSidebar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: ColorsManager.mainGreen,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.grass, color: ColorsManager.moreWhite, size: 30),
              const SizedBox(width: 10),
              Text(
                'Nabta',
                style: CairoTextStyles.bold
                    .copyWith(fontSize: 24, color: ColorsManager.moreWhite),
              ),
            ],
          ),
          const SizedBox(height: 40),
          _SidebarItem(
            icon: Icons.dashboard,
            title: 'لوحة التحكم',
            isSelected: selectedIndex == 0,
            onTap: () => onItemTapped(0),
          ),
          _SidebarItem(
            icon: Icons.description,
            title: 'التقارير',
            isSelected: selectedIndex == 1,
            onTap: () => onItemTapped(1),
          ),
          _SidebarItem(
            icon: Icons.analytics,
            title: 'التحليلات',
            isSelected: selectedIndex == 2,
            onTap: () => onItemTapped(2),
          ),
          _SidebarItem(
            icon: Icons.settings,
            title: 'الإعدادات',
            isSelected: selectedIndex == 3, // Assuming index 3 for settings
            onTap: () => onItemTapped(3),
          ),
          const Spacer(),
          _SidebarItem(
            icon: Icons.logout,
            title: 'تسجيل الخروج',
            isSelected: selectedIndex == 4, // Assuming index 4 for logout
            onTap: () => onItemTapped(4),
          ),
        ],
      ),
    );
  }
}

class _SidebarItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const _SidebarItem({
    required this.icon,
    required this.title,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? ColorsManager.secondGreen : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(icon, color: ColorsManager.moreWhite, size: 28),
        title: Text(
          title,
          style: CairoTextStyles.medium
              .copyWith(fontSize: 18, color: ColorsManager.moreWhite),
        ),
        onTap: onTap,
      ),
    );
  }
}
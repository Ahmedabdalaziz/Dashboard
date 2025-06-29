import 'package:dash_board/models/dashboard_stats.dart';
import 'package:dash_board/theming/color.dart';
import 'package:dash_board/theming/style_manager.dart';
import 'package:flutter/material.dart';

class DashboardStatsGrid extends StatelessWidget {
  final Stats stats;

  const DashboardStatsGrid({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 4,
      crossAxisSpacing: 20.0,
      mainAxisSpacing: 20.0,
      childAspectRatio: 1.2,
      children: [
        _StatCard(
          title: 'بلاغات اليوم',
          value: stats.todayCount.toString(),
          icon: Icons.lightbulb_outline,
          backgroundColor: ColorsManager.cardBackground,
          textColor: ColorsManager.darkGreenText,
          iconColor: ColorsManager.mainGreen,
        ),
        _StatCard(
          title: 'بلاغات الأمس',
          value: stats.yesterdayCount.toString(),
          icon: Icons.history,
          backgroundColor: ColorsManager.lightBlue,
          textColor: ColorsManager.darkBlueText,
          iconColor: const Color(0xFF4A90E2),
        ),
        _StatCard(
          title: 'نسبة التغير',
          value: '${stats.changePercent}%',
          icon: Icons.trending_up,
          backgroundColor: ColorsManager.yellowOrange,
          textColor: ColorsManager.darkOrangeText,
          iconColor: ColorsManager.orange,
        ),
        _StatCard(
          title: 'بلاغات غير معروفة',
          value: stats.unknownCount.toString(),
          icon: Icons.help_outline,
          backgroundColor: ColorsManager.lightRed,
          textColor: ColorsManager.darkRedText,
          iconColor: ColorsManager.red,
        ),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color backgroundColor;
  final Color textColor;
  final Color iconColor;

  const _StatCard({
    required this.title,
    required this.value,
    required this.icon,
    required this.backgroundColor,
    required this.textColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: backgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: ColorsManager.moreWhite,
                    shape: BoxShape.circle,
                    border:
                        Border.all(color: iconColor.withOpacity(0.3), width: 1),
                  ),
                  child: Icon(icon, color: iconColor, size: 24),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    title,
                    style: CairoTextStyles.medium.copyWith(
                      fontSize: 15,
                      color: textColor,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              value,
              style: CairoTextStyles.bold.copyWith(
                fontSize: 28,
                color: ColorsManager.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

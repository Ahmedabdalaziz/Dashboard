import 'package:dash_board/models/dashboard_stats.dart';
import 'package:dash_board/theming/color.dart';
import 'package:dash_board/theming/style_manager.dart';
import 'package:flutter/material.dart';

// Import the new ReportsScreen
import 'package:dash_board/ui/screens/reports_screen.dart'; // Make sure this path is correct after creation

class DashboardReportsSection extends StatelessWidget {
  final List<Report> reports;

  const DashboardReportsSection({super.key, required this.reports});

  String getMainDisease(OriginDetermination origin) {
    final allDiseases = [
      ...origin.insectRelatedIssues,
      ...origin.bacterialIssues,
      ...origin.viralIssues,
      ...origin.infectionsAndParasites,
      ...origin.respiratoryIssues,
      ...origin.traumasAndInheritance,
      ...origin.newIssues,
      ...origin.notDetermined,
    ].where((e) => e.trim().isNotEmpty && e != 'غير متأكد').toList();

    return allDiseases.isNotEmpty ? allDiseases.first : 'غير معروف';
  }

  @override
  Widget build(BuildContext context) {
    // نأخذ عدد محدود من التقارير لعرضها في لوحة التحكم (مثلاً، 3 فقط)
    final displayReports = reports.take(3).toList();

    return Card(
      elevation: 0,
      color: ColorsManager.moreWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'أحدث التقارير',
                  style: CairoTextStyles.semiBold
                      .copyWith(fontSize: 18, color: ColorsManager.darkGreenText),
                ),
                TextButton(
                  onPressed: () {
                    // Navigate to the full ReportsScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReportsScreen(allReports: reports),
                      ),
                    );
                  },
                  child: Text(
                    'عرض الكل',
                    style: CairoTextStyles.regular
                        .copyWith(color: ColorsManager.mainGreen),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            if (displayReports.isEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Center(
                  child: Text(
                    'لا توجد تقارير حالياً.',
                    style: CairoTextStyles.regular
                        .copyWith(color: ColorsManager.textGrey),
                  ),
                ),
              )
            else
              Column(
                children: displayReports.map((report) {
                  final diseaseName = getMainDisease(report.originDetermination);
                  final governorateName = report.governorate ?? 'غير محدد';

                  Color statusColor = ColorsManager.textGrey;
                  final status = report.status.toLowerCase();
                  if (status.contains('قيد المراجعة') || status.contains('pending')) {
                    statusColor = ColorsManager.orange;
                  } else if (status.contains('مغلق') || status.contains('closed')) {
                    statusColor = ColorsManager.red;
                  } else if (status.contains('تم التأكد') || status.contains('confirmed')) {
                    statusColor = ColorsManager.mainGreen;
                  }

                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(12), // تصغير البادينج قليلاً
                    decoration: BoxDecoration(
                      color: ColorsManager.greenWhite,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                diseaseName,
                                style: CairoTextStyles.bold.copyWith(fontSize: 15, color: ColorsManager.darkGreenText),
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '${report.animalType} - $governorateName',
                                style: CairoTextStyles.regular.copyWith(fontSize: 12, color: ColorsManager.textGrey),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: statusColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            report.status,
                            style: CairoTextStyles.medium.copyWith(fontSize: 11, color: statusColor),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
          ],
        ),
      ),
    );
  }
}
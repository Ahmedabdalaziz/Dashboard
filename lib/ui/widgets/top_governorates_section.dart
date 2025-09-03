import 'package:dash_board/models/dashboard_stats.dart';
import 'package:dash_board/theming/color.dart';
import 'package:dash_board/theming/style_manager.dart';
import 'package:flutter/material.dart';

class DashboardTopGovernoratesSection extends StatelessWidget {
  final List<TopGovernorate> topGovernorates;

  const DashboardTopGovernoratesSection(
      {super.key, required this.topGovernorates});

  @override
  Widget build(BuildContext context) {
    final sortedGovernorates = List<TopGovernorate>.from(topGovernorates)
      ..sort((a, b) {
        final int totalA = a.topDiseases.fold(0, (sum, d) => sum + d.count);
        final int totalB = b.topDiseases.fold(0, (sum, d) => sum + d.count);
        return totalB.compareTo(totalA); 
      });

    final displayGovernorates = sortedGovernorates.take(5).toList(); 

    return Card(
      elevation: 0,
      color: ColorsManager.moreWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'المحافظات الأكثر تأثراً',
              style: CairoTextStyles.semiBold
                  .copyWith(fontSize: 18, color: ColorsManager.darkGreenText),
            ),
            const SizedBox(height: 15),
            if (displayGovernorates.isEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Center(
                    child: Text('لا توجد بيانات عن المحافظات.',
                        style: CairoTextStyles.regular
                            .copyWith(color: ColorsManager.textGrey))),
              )
            else
              Column(
                children: displayGovernorates.map((governorateData) {
                  final governorateName = governorateData.governorate ?? 'غير محدد';
                  final int totalReports = governorateData.topDiseases.fold(0, (sum, d) => sum + d.count);

                  final topDiseaseInGovernorate = governorateData.topDiseases
                      .where((d) => d.disease != 'غير متأكد')
                      .cast<TopGovernorateTopDisease?>() 
                      .fold<TopGovernorateTopDisease?>(null, (prev, current) =>
                  (prev == null || current!.count > prev.count) ? current : prev);

                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: ColorsManager.greenWhite,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              governorateName,
                              style: CairoTextStyles.bold.copyWith(
                                  fontSize: 16,
                                  color: ColorsManager.darkGreenText),
                            ),
                            Text(
                              '$totalReports بلاغ',
                              style: CairoTextStyles.medium.copyWith(
                                  fontSize: 15,
                                  color: ColorsManager.mainGreen),
                            ),
                          ],
                        ),
                        if (topDiseaseInGovernorate != null) ...[
                          const SizedBox(height: 8),
                          Text(
                            'الأكثر شيوعًا: ${topDiseaseInGovernorate.disease} (${topDiseaseInGovernorate.count} بلاغ)',
                            style: CairoTextStyles.regular.copyWith(
                                fontSize: 13, color: ColorsManager.textGrey),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],

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

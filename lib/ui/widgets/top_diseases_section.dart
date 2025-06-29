import 'package:dash_board/models/dashboard_stats.dart';
import 'package:dash_board/theming/color.dart';
import 'package:dash_board/theming/style_manager.dart';
import 'package:flutter/material.dart';

class DashboardTopDiseasesSection extends StatelessWidget {
  final List<TopDiseaseElement> topDiseases;

  const DashboardTopDiseasesSection({super.key, required this.topDiseases});

  @override
  Widget build(BuildContext context) {
    // نأخذ العنصر الأول فقط، بافتراض أنه الأكثر شيوعًا أو الملخص العام
    final TopDiseaseElement? summaryDisease =
    topDiseases.isNotEmpty ? topDiseases.first : null;

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
              'أبرز الأمراض المبلغ عنها', // تغيير العنوان ليكون أعم
              style: CairoTextStyles.semiBold
                  .copyWith(fontSize: 18, color: ColorsManager.darkGreenText),
            ),
            const SizedBox(height: 15),
            if (summaryDisease == null || summaryDisease.count == 0) // إذا لم يكن هناك بلاغات على الإطلاق
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Center(
                    child: Text('لا توجد بيانات عن الأمراض الشائعة حالياً.',
                        style: CairoTextStyles.regular
                            .copyWith(color: ColorsManager.textGrey))),
              )
            else
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: ColorsManager.greenWhite,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'إجمالي البلاغات ذات التصنيف: ${summaryDisease.count}',
                      style: CairoTextStyles.bold.copyWith(
                          fontSize: 16, color: ColorsManager.darkGreenText),
                    ),
                    const SizedBox(height: 15),
                    _buildDiseaseCategoryRow(
                      context,
                      'بلاغات حشرية:',
                      summaryDisease.disease.insectBorneDiseases,
                      summaryDisease.count,
                      ColorsManager.orange,
                    ),
                    _buildDiseaseCategoryRow(
                      context,
                      'بلاغات بكتيرية:',
                      summaryDisease.disease.bacterialDiseases,
                      summaryDisease.count,
                      ColorsManager.red,
                    ),
                    _buildDiseaseCategoryRow(
                      context,
                      'بلاغات فيروسية:',
                      summaryDisease.disease.viralDiseases,
                      summaryDisease.count,
                      ColorsManager.lightBlue, // يمكنك إضافة لون أزرق لـ Viral
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildDiseaseCategoryRow(BuildContext context, String title, int count,
      int totalCount, Color progressColor) {
    if (count == 0 && totalCount == 0) {
      return const SizedBox.shrink(); // لا تعرض الصف إذا لم تكن هناك بيانات مفيدة
    }
    double percentage = totalCount == 0 ? 0.0 : (count / totalCount);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: CairoTextStyles.regular
                    .copyWith(color: ColorsManager.black),
              ),
              Text(
                '$count بلاغ',
                style: CairoTextStyles.medium
                    .copyWith(color: ColorsManager.textGrey),
              ),
            ],
          ),
          const SizedBox(height: 5),
          LinearProgressIndicator(
            value: percentage,
            backgroundColor: ColorsManager.lightGrey,
            color: progressColor,
            borderRadius: BorderRadius.circular(5),
          ),
        ],
      ),
    );
  }
}
import 'package:dash_board/cubit/dashboard_cubit.dart';
import 'package:dash_board/models/dashboard_stats.dart';
import 'package:dash_board/theming/color.dart';
import 'package:dash_board/theming/style_manager.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart' show SpinKitFadingCircle;

import '../../cubit/dashboard_state.dart' show DashboardState;

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return state.when(
          initial: () => Scaffold(
            appBar: _buildAppBar(context),
            body: const Center(child: Text('لم يتم تحميل البيانات بعد')),
          ),
          loading: () => Scaffold(
            appBar: _buildAppBar(context),
            body: const Center(
                child: SpinKitFadingCircle(
                    color: ColorsManager.mainGreen, size: 50.0)),
          ),
          loaded: (statsData) => _buildAnalyticsContent(context, statsData),
          error: (msg) => Scaffold(
            appBar: _buildAppBar(context),
            body: Center(child: Text('حدث خطأ: $msg')),
          ),
        );
      },
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsManager.mainGreen,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
      title: Text(
        'لوحة التحليل والإحصائيات',
        style: CairoTextStyles.semiBold.copyWith(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
    );
  }

  Widget _buildAnalyticsContent(
      BuildContext context, DashboardStatsResponse statsData) {
    final governorates = statsData.stats?.topGovernorates ?? [];
    final today = statsData.stats?.todayCount ?? 0;
    final yesterday = statsData.stats?.yesterdayCount ?? 0;
    final percentChange = statsData.stats?.changePercent ?? "0%";
    final reports = statsData.reports ?? [];

    return Scaffold(
      backgroundColor: ColorsManager.greenWhite,
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // إحصائيات سريعة
              _buildQuickStats(today, yesterday, percentChange, reports),
              const SizedBox(height: 20),

              // إحصائيات الحيوانات
              _buildAnimalTypeStats(reports),
              const SizedBox(height: 20),

              // توزيع الحالات حسب الحالة
              _buildStatusDistribution(reports),
              const SizedBox(height: 20),

              // توزيع البلاغات حسب المحافظة
              _buildGovernorateChart(governorates),
              const SizedBox(height: 20),

              // أكثر الأمراض شيوعاً
              _buildTopDiseasesChart(governorates),
              const SizedBox(height: 20),

              // تحليل الاتجاهات الزمنية
              _buildTimeAnalysis(reports),
              const SizedBox(height: 20),

              // ملخص تفصيلي
              _buildDetailedSummary(statsData),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuickStats(
      int today, int yesterday, String percent, List reports) {
    final totalReports = reports.length;
    final pendingReports = reports.where((r) => r.status == "Pending").length;
    final activeUsers = reports
        .map((r) => r.contactInformation.responsiblePersonPhone)
        .toSet()
        .length;

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: ColorsManager.moreWhite,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'الإحصائيات السريعة',
              style: CairoTextStyles.semiBold.copyWith(
                fontSize: 18,
                color: ColorsManager.darkGreenText,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: _buildStatCard(
                    'بلاغات اليوم',
                    today.toString(),
                    Icons.today,
                    ColorsManager.mainGreen,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildStatCard(
                    'إجمالي البلاغات',
                    totalReports.toString(),
                    Icons.assignment,
                    ColorsManager.darkGreenText,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _buildStatCard(
                    'قيد المراجعة',
                    pendingReports.toString(),
                    Icons.pending_actions,
                    ColorsManager.red,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildStatCard(
                    'المستخدمين النشطين',
                    activeUsers.toString(),
                    Icons.people,
                    Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(
      String title, String value, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.2)),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 28),
          const SizedBox(height: 8),
          Text(
            value,
            style: CairoTextStyles.bold.copyWith(fontSize: 20, color: color),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: CairoTextStyles.regular.copyWith(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildAnimalTypeStats(List reports) {
    Map<String, int> animalCounts = {};
    for (var report in reports) {
      String animalType = report.animalType ?? 'غير محدد';
      animalCounts[animalType] = (animalCounts[animalType] ?? 0) + 1;
    }

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: ColorsManager.moreWhite,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.pets, color: ColorsManager.mainGreen, size: 24),
                const SizedBox(width: 8),
                Text(
                  'توزيع أنواع الحيوانات',
                  style: CairoTextStyles.semiBold.copyWith(
                    fontSize: 18,
                    color: ColorsManager.darkGreenText,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: PieChart(
                PieChartData(
                  sections: animalCounts.entries.map((entry) {
                    final colors = [
                      ColorsManager.mainGreen,
                      ColorsManager.red,
                      Colors.blue,
                      Colors.orange,
                      Colors.purple,
                    ];
                    final colorIndex =
                        animalCounts.keys.toList().indexOf(entry.key);
                    return PieChartSectionData(
                      color: colors[colorIndex % colors.length],
                      value: entry.value.toDouble(),
                      title: '${entry.key}\n${entry.value}',
                      titleStyle: CairoTextStyles.regular.copyWith(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      radius: 80,
                    );
                  }).toList(),
                  sectionsSpace: 2,
                  centerSpaceRadius: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusDistribution(List reports) {
    Map<String, int> statusCounts = {};
    for (var report in reports) {
      String status = report.status ?? 'غير محدد';
      statusCounts[status] = (statusCounts[status] ?? 0) + 1;
    }

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: ColorsManager.moreWhite,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.analytics, color: ColorsManager.mainGreen, size: 24),
                const SizedBox(width: 8),
                Text(
                  'توزيع الحالات',
                  style: CairoTextStyles.semiBold.copyWith(
                    fontSize: 18,
                    color: ColorsManager.darkGreenText,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ...statusCounts.entries.map((entry) {
              final percentage =
                  (entry.value / reports.length * 100).toStringAsFixed(1);
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        entry.key,
                        style: CairoTextStyles.regular.copyWith(fontSize: 14),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: LinearProgressIndicator(
                        value: entry.value / reports.length,
                        backgroundColor: Colors.grey[300],
                        valueColor: AlwaysStoppedAnimation<Color>(
                          entry.key == 'Pending'
                              ? ColorsManager.red
                              : ColorsManager.mainGreen,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '${entry.value} ($percentage%)',
                      style: CairoTextStyles.medium.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildGovernorateChart(List<TopGovernorate> governorates) {
    if (governorates.isEmpty) return const SizedBox.shrink();

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: ColorsManager.moreWhite,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.location_on,
                    color: ColorsManager.mainGreen, size: 24),
                const SizedBox(width: 8),
                Text(
                  'توزيع البلاغات حسب المحافظة',
                  style: CairoTextStyles.semiBold.copyWith(
                    fontSize: 18,
                    color: ColorsManager.darkGreenText,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 300,
              child: BarChart(
                BarChartData(
                  barTouchData: BarTouchData(
                    touchTooltipData: BarTouchTooltipData(
                      tooltipBorderRadius: BorderRadius.circular(8),
                      getTooltipItem: (group, groupIndex, rod, rodIndex) {
                        final governorate = governorates[group.x.toInt()];
                        final total = governorate.topDiseases
                            .fold<int>(0, (sum, e) => sum + e.count);
                        return BarTooltipItem(
                          '${governorate.governorate ?? 'غير محدد'}\n',
                          CairoTextStyles.regular.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: '$total بلاغ',
                              style: CairoTextStyles.regular.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 42,
                        getTitlesWidget: (value, meta) {
                          if (value.toInt() >= governorates.length)
                            return Container();
                          return SideTitleWidget(
                            meta: meta,
                            space: 10,
                            child: Text(
                              governorates[value.toInt()].governorate ??
                                  'غير محدد',
                              style: CairoTextStyles.regular.copyWith(
                                fontSize: 10,
                                color: ColorsManager.textGrey,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          );
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          return SideTitleWidget(
                            meta: meta,
                            space: 4,
                            child: Text(
                              value.toInt().toString(),
                              style: CairoTextStyles.regular.copyWith(
                                fontSize: 10,
                                color: ColorsManager.textGrey,
                              ),
                            ),
                          );
                        },
                        reservedSize: 40,
                      ),
                    ),
                    topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                    rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                  ),
                  borderData: FlBorderData(show: false),
                  gridData: FlGridData(
                    show: true,
                    drawHorizontalLine: true,
                    horizontalInterval: 5,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: Colors.grey[300]!,
                        strokeWidth: 1,
                      );
                    },
                  ),
                  barGroups: List.generate(governorates.length, (index) {
                    final total = governorates[index]
                        .topDiseases
                        .fold<int>(0, (sum, e) => sum + e.count);
                    return BarChartGroupData(
                      x: index,
                      barRods: [
                        BarChartRodData(
                          toY: total.toDouble(),
                          color: ColorsManager.mainGreen,
                          width: 20,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopDiseasesChart(List<TopGovernorate> governorates) {
    Map<String, int> diseaseCounts = {};

    for (var governorate in governorates) {
      for (var disease in governorate.topDiseases) {
        String diseaseName = disease.disease ?? 'غير محدد';
        diseaseCounts[diseaseName] =
            (diseaseCounts[diseaseName] ?? 0) + disease.count;
      }
    }

    // أخذ أكثر 5 أمراض شيوعاً
    var sortedDiseases = diseaseCounts.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    var topDiseases = sortedDiseases.take(5).toList();

    if (topDiseases.isEmpty) return const SizedBox.shrink();

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: ColorsManager.moreWhite,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.health_and_safety,
                    color: ColorsManager.mainGreen, size: 24),
                const SizedBox(width: 8),
                Text(
                  'أكثر الأمراض شيوعاً',
                  style: CairoTextStyles.semiBold.copyWith(
                    fontSize: 18,
                    color: ColorsManager.darkGreenText,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ...topDiseases.asMap().entries.map((entry) {
              final index = entry.key;
              final diseaseEntry = entry.value;
              final colors = [
                ColorsManager.mainGreen,
                ColorsManager.red,
                Colors.blue,
                Colors.orange,
                Colors.purple,
              ];

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Row(
                  children: [
                    Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: colors[index % colors.length],
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        diseaseEntry.key,
                        style: CairoTextStyles.regular.copyWith(fontSize: 14),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: colors[index % colors.length].withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        diseaseEntry.value.toString(),
                        style: CairoTextStyles.medium.copyWith(
                          fontSize: 12,
                          color: colors[index % colors.length],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildTimeAnalysis(List reports) {
    Map<String, int> dailyCounts = {};

    for (var report in reports) {
      String? createdAt = report.createdAt;
      if (createdAt != null) {
        DateTime date = DateTime.parse(createdAt);
        String dateKey = '${date.day}/${date.month}';
        dailyCounts[dateKey] = (dailyCounts[dateKey] ?? 0) + 1;
      }
    }

    var sortedDates = dailyCounts.entries.toList()
      ..sort((a, b) => a.key.compareTo(b.key));

    if (sortedDates.isEmpty) return const SizedBox.shrink();

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: ColorsManager.moreWhite,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.timeline, color: ColorsManager.mainGreen, size: 24),
                const SizedBox(width: 8),
                Text(
                  'اتجاه البلاغات اليومية',
                  style: CairoTextStyles.semiBold.copyWith(
                    fontSize: 18,
                    color: ColorsManager.darkGreenText,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(
                    show: true,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: Colors.grey[300]!,
                        strokeWidth: 1,
                      );
                    },
                  ),
                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          if (value.toInt() >= sortedDates.length)
                            return Container();
                          return SideTitleWidget(
                            meta: meta,
                            space: 4,
                            child: Text(
                              sortedDates[value.toInt()].key,
                              style: CairoTextStyles.regular.copyWith(
                                fontSize: 10,
                                color: ColorsManager.textGrey,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          return SideTitleWidget(
                            meta: meta,
                            space: 4,
                            child: Text(
                              value.toInt().toString(),
                              style: CairoTextStyles.regular.copyWith(
                                fontSize: 10,
                                color: ColorsManager.textGrey,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    topTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                    rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false)),
                  ),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: sortedDates.asMap().entries.map((entry) {
                        return FlSpot(
                            entry.key.toDouble(), entry.value.value.toDouble());
                      }).toList(),
                      isCurved: true,
                      color: ColorsManager.mainGreen,
                      barWidth: 3,
                      belowBarData: BarAreaData(
                        show: true,
                        color: ColorsManager.mainGreen.withOpacity(0.3),
                      ),
                      dotData: FlDotData(
                        show: true,
                        getDotPainter: (spot, percent, barData, index) {
                          return FlDotCirclePainter(
                            radius: 4,
                            color: ColorsManager.mainGreen,
                            strokeWidth: 2,
                            strokeColor: Colors.white,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailedSummary(DashboardStatsResponse statsData) {
    final reports = statsData.reports ?? [];
    final responseEfficiency = statsData.stats?.responseEfficiency;

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: ColorsManager.moreWhite,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.summarize, color: ColorsManager.mainGreen, size: 24),
                const SizedBox(width: 8),
                Text(
                  'ملخص تفصيلي',
                  style: CairoTextStyles.semiBold.copyWith(
                    fontSize: 18,
                    color: ColorsManager.darkGreenText,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildSummaryRow(
              'إجمالي البلاغات',
              reports.length.toString(),
              Icons.assignment_outlined,
              ColorsManager.darkGreenText,
            ),
            _buildSummaryRow(
              'البلاغات قيد المراجعة',
              reports.where((r) => r.status == "Pending").length.toString(),
              Icons.pending_actions,
              ColorsManager.red,
            ),
            _buildSummaryRow(
              'عدد المستخدمين النشطين',
              reports
                  .map((r) => r.contactInformation.responsiblePersonPhone)
                  .toSet()
                  .length
                  .toString(),
              Icons.people_outline,
              Colors.blue,
            ),
            if (responseEfficiency != null) ...[
              _buildSummaryRow(
                'متوسط زمن الاستجابة',
                responseEfficiency.avgResolutionTime ?? 'غير متاح',
                Icons.timer_outlined,
                Colors.orange,
              ),
              _buildSummaryRow(
                'معدل الاستجابة',
                '${responseEfficiency.resolutionRate ?? '0'}%',
                Icons.trending_up,
                ColorsManager.mainGreen,
              ),
            ],
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: ColorsManager.mainGreen.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
                border:
                    Border.all(color: ColorsManager.mainGreen.withOpacity(0.3)),
              ),
              child: Row(
                children: [
                  Icon(Icons.info_outline,
                      color: ColorsManager.mainGreen, size: 20),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'تم تحديث البيانات آخر مرة: ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                      style: CairoTextStyles.regular.copyWith(
                        fontSize: 12,
                        color: ColorsManager.mainGreen,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryRow(
      String title, String value, IconData icon, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: color, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: CairoTextStyles.regular.copyWith(fontSize: 14),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: color.withOpacity(0.3)),
            ),
            child: Text(
              value,
              style: CairoTextStyles.medium.copyWith(
                fontSize: 12,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

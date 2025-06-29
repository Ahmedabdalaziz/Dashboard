// dashboard_screen.dart
import 'package:dash_board/cubit/dashboard_cubit.dart';
import 'package:dash_board/cubit/dashboard_state.dart';
import 'package:dash_board/services/api_service.dart';
import 'package:dash_board/theming/color.dart';
import 'package:dash_board/theming/style_manager.dart';
import 'package:dash_board/ui/screens/analytics_screen.dart';
import 'package:dash_board/ui/screens/reports_screen.dart' show ReportsScreen;
import 'package:dash_board/ui/widgets/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, ReadContext, BlocProvider;
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../widgets/dashboard_reports_preview.dart';
import '../widgets/header.dart';
import '../widgets/map_section.dart';
import '../widgets/stats_grid.dart';
import '../widgets/top_diseases_section.dart';
import '../widgets/top_governorates_section.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 0;

  void onItemTapped(int index, List<dynamic> reports) {
    setState(() {
      selectedIndex = index;
    });

    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ReportsScreen(allReports: reports.cast()),
        ),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => DashboardCubit(ApiService()),
                  child: const AnalyticsScreen(),
                )),
      );
    }
    else if (index == 0) {
      Navigator.popUntil(context, (route) => route.isFirst);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.greenWhite,
      body: Row(
        children: [
          BlocBuilder<DashboardCubit, DashboardState>(
            builder: (context, state) {
              final reports = state.maybeWhen(
                loaded: (stats) => stats.reports ?? [],
                orElse: () => [],
              );
              return DashboardSidebar(
                selectedIndex: selectedIndex,
                onItemTapped: (index) => onItemTapped(index, reports),
              );
            },
          ),
          Expanded(
            child: Column(
              children: [
                const DashboardHeader(),
                Expanded(
                  child: BlocBuilder<DashboardCubit, DashboardState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () => const Center(
                            child: SpinKitFadingCircle(
                                color: ColorsManager.mainGreen, size: 50.0)),
                        loading: () => const Center(
                            child: SpinKitFadingCircle(
                                color: ColorsManager.mainGreen, size: 50.0)),
                        loaded: (stats) => RefreshIndicator(
                          onRefresh: () => context
                              .read<DashboardCubit>()
                              .fetchDashboardStats(),
                          child: SingleChildScrollView(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Added null check for stats.stats
                                if (stats.stats != null) ...[
                                  DashboardStatsGrid(stats: stats.stats!),
                                  const SizedBox(height: 20),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: DashboardMapSection(
                                            mapPoints: stats.stats!.mapPoints),
                                      ),
                                      const SizedBox(width: 20),
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                          children: [
                                            DashboardTopGovernoratesSection(
                                                topGovernorates: stats
                                                    .stats!.topGovernorates),
                                            const SizedBox(height: 20),
                                            DashboardTopDiseasesSection(
                                                topDiseases:
                                                    stats.stats!.topDiseases),
                                            const SizedBox(height: 20),
                                            DashboardReportsPreview(
                                                reports: stats.reports ?? []),
                                            // Added null check for stats.reports
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                ] else ...[
                                  Center(
                                    child: Text(
                                      'لا توجد بيانات إحصائية لعرضها.',
                                      style: CairoTextStyles.regular.copyWith(
                                          color: ColorsManager.textGrey),
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                        ),
                        error: (message) => Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.error_outline,
                                  color: ColorsManager.red, size: 100),
                              const SizedBox(height: 10),
                              Text('حدث خطأ: $message',
                                  textAlign: TextAlign.center,
                                  style: CairoTextStyles.regular.copyWith(
                                      fontSize: 16, color: ColorsManager.red)),
                              const SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () => context
                                    .read<DashboardCubit>()
                                    .fetchDashboardStats(),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorsManager.mainGreen,
                                  foregroundColor: ColorsManager.moreWhite,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24, vertical: 12),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Text('إعادة المحاولة',
                                    style: CairoTextStyles.semiBold),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

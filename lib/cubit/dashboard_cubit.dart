// lib/cubits/dashboard/dashboard_cubit.dart
import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../services/api_service.dart';
import 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final ApiService _apiService;
  Timer? _refreshTimer;

  DashboardCubit(this._apiService) : super(const DashboardState.initial()) {
    fetchDashboardStats();
    _startRefreshTimer();
  }

  Future<void> fetchDashboardStats() async {
    emit(const DashboardState.loading());
    try {
      final stats = await _apiService.getDashboardStats();
      emit(DashboardState.loaded(stats));
    } catch (e) {
      emit(DashboardState.error(e.toString()));
    }
  }

  void _startRefreshTimer() {
    _refreshTimer = Timer.periodic(const Duration(minutes: 3), (timer) {
      fetchDashboardStats();
    });
  }

  @override
  Future<void> close() {
    _refreshTimer?.cancel();
    return super.close();
  }
}
import 'package:dio/dio.dart';

import '../models/dashboard_stats.dart';

class ApiService {
  late final Dio _dio;

  static const String _baseUrl = 'https://graduation-project-hvey.onrender.com';

  ApiService() {
    _dio = Dio(BaseOptions(
      baseUrl: _baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ));

    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
        logPrint: (object) {
          print(object);
        },
      ),
    );
  }

  Future<DashboardStatsResponse> getDashboardStats() async {
    try {
      final response = await _dio.get('/dashboard/getDashboardStats');
      return DashboardStatsResponse.fromJson(response.data);
    } on DioException catch (e) {
      String errorMessage = 'Failed to load dashboard stats.';
      if (e.response != null) {
        errorMessage +=
            ' Status: ${e.response!.statusCode}. Data: ${e.response!.data}';
      } else {
        errorMessage += ' Error: ${e.message}';
      }
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('An unexpected error occurred: $e');
    }
  }
}

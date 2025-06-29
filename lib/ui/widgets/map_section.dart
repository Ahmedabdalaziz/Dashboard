import 'dart:math';

import 'package:dash_board/models/dashboard_stats.dart';
import 'package:dash_board/theming/style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../theming/color.dart';

class DashboardMapSection extends StatefulWidget {
  final List<MapPoint> mapPoints;

  const DashboardMapSection({super.key, required this.mapPoints});

  @override
  State<DashboardMapSection> createState() => _DashboardMapSectionState();
}

class _DashboardMapSectionState extends State<DashboardMapSection> {
  final Map<String, Color> _diseaseColors = {};
  final Random _random = Random();
  String? _selectedFilterType = 'Diseases'; // لتتبع نوع الفلتر المختار

  Color _getColorForDisease(String disease) {
    if (!_diseaseColors.containsKey(disease)) {
      _diseaseColors[disease] = Color.fromARGB(
        255,
        _random.nextInt(200) + 50,
        _random.nextInt(200) + 50,
        _random.nextInt(200) + 50,
      );
    }
    return _diseaseColors[disease]!;
  }

  @override
  Widget build(BuildContext context) {
    List<Marker> markers = widget.mapPoints.map((point) {
      final Color markerColor = _getColorForDisease(point.disease);

      return Marker(
        point: LatLng(point.lng, point.lat),
        width: 30.0,
        height: 30.0,
        child: Container(
          decoration: BoxDecoration(
            color: markerColor,
            shape: BoxShape.circle,
            border: Border.all(color: ColorsManager.moreWhite, width: 3),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: const Center(
            child: Icon(
              Icons.warning_amber,
              color: ColorsManager.moreWhite,
              size: 18,
            ),
          ),
        ),
      );
    }).toList();

    LatLng initialCenter = const LatLng(26.8206, 30.8025); // مركز مصر الافتراضي
    // إذا كان هناك نقاط، احسب المتوسط
    if (markers.isNotEmpty) {
      double sumLat = 0;
      double sumLng = 0;
      for (var marker in markers) {
        sumLat += marker.point.latitude;
        sumLng += marker.point.longitude;
      }
      initialCenter = LatLng(sumLat / markers.length, sumLng / markers.length);
    }

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
              'الخريطة',
              style: CairoTextStyles.semiBold
                  .copyWith(fontSize: 18, color: ColorsManager.darkGreenText),
            ),
            const SizedBox(height: 15),
            Container(
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: ColorsManager.lightGrey),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: FlutterMap(
                  options: MapOptions(
                    initialCenter: initialCenter,
                    initialZoom: 6.0,
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                      'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName: 'com.example.nabta_dashboard',
                    ),
                    MarkerLayer(markers: markers),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // نستخدم _buildFilterSection الذي سيحتوي على الأزرار وقائمة الفلتر
            _buildFilterSection(),
          ],
        ),
      ),
    );
  }

  // دالة جديدة لبناء قسم الفلتر بالكامل
  Widget _buildFilterSection() {
    final Set<String> uniqueDiseases = widget.mapPoints.map((point) => point.disease).toSet();
    final List<String> diseases = uniqueDiseases.toList()..sort(); // تأكد من فرز القائمة

    final Set<String> uniqueAnimalTypes = widget.mapPoints.map((point) => point.animalType).toSet();
    final List<String> animalTypes = uniqueAnimalTypes.toList()..sort(); // تأكد من فرز القائمة

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // الأزرار التي تختار نوع الفلتر (الأمراض أو الحيوانات)
        Row(
          children: [
            _buildFilterButton('الأمراض', _selectedFilterType == 'Diseases', () {
              setState(() {
                _selectedFilterType = 'Diseases';
              });
            }),
            const SizedBox(width: 10),
            _buildFilterButton('الحيوانات', _selectedFilterType == 'Animals', () {
              setState(() {
                _selectedFilterType = 'Animals';
              });
            }),
          ],
        ),
        const SizedBox(height: 10),
        // قائمة الفلتر الفعلية بناءً على الاختيار
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: ColorsManager.greenWhite,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: (_selectedFilterType == 'Diseases' ? diseases : animalTypes)
                .map((item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: _selectedFilterType == 'Diseases'
                          ? _getColorForDisease(item) // استخدم لون المرض
                          : ColorsManager.mainGreen, // أو لون ثابت لنوع الحيوان
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  // هنا هو التعديل الرئيسي لحل مشكلة التجاوز
                  Expanded( // <--- هنا تم إضافة Expanded
                    child: Text(
                      item,
                      style: CairoTextStyles.regular.copyWith(
                          fontSize: 14, color: ColorsManager.black),
                      overflow: TextOverflow.ellipsis, // لمنع تجاوز النص
                    ),
                  ),
                ],
              ),
            ))
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildFilterButton(
      String text, bool isSelected, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:
        isSelected ? ColorsManager.mainGreen : ColorsManager.lightGrey,
        foregroundColor:
        isSelected ? ColorsManager.moreWhite : ColorsManager.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      ),
      child: Text(text, style: CairoTextStyles.medium.copyWith(fontSize: 14)),
    );
  }
}
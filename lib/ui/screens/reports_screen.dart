// الكود الكامل والمعدل لـ lib/ui/screens/reports_screen.dart

import 'package:dash_board/models/dashboard_stats.dart';
import 'package:dash_board/theming/color.dart';
import 'package:dash_board/theming/style_manager.dart';
import 'package:flutter/material.dart';

class ReportsScreen extends StatefulWidget {
  final List<Report> allReports;

  const ReportsScreen({super.key, required this.allReports});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  late List<Report> _filteredReports;
  String _searchQuery = '';
  String? _selectedStatusFilter;
  String? _selectedAnimalTypeFilter;
  String? _selectedGovernorateFilter;

  @override
  void initState() {
    super.initState();
    _filteredReports = widget.allReports;
    // Initial application of filters if any are pre-set, or just to display all
    _applyFilters();
  }

  // Helper to get main disease string from OriginDetermination
  String _getMainDisease(OriginDetermination origin) {
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

  // Helper to get status color
  Color _getStatusColor(String status) {
    final lowerStatus = status.toLowerCase();
    if (lowerStatus.contains('قيد المراجعة') || lowerStatus.contains('pending')) {
      return ColorsManager.orange;
    } else if (lowerStatus.contains('مغلق') || lowerStatus.contains('closed')) {
      return ColorsManager.red;
    } else if (lowerStatus.contains('تم التأكد') || lowerStatus.contains('confirmed')) {
      return ColorsManager.mainGreen;
    }
    return ColorsManager.textGrey;
  }

  // Helper to get status icon
  IconData _getStatusIcon(String status) {
    final lowerStatus = status.toLowerCase();
    if (lowerStatus.contains('قيد المراجعة') || lowerStatus.contains('pending')) {
      return Icons.pending_actions;
    } else if (lowerStatus.contains('مغلق') || lowerStatus.contains('closed')) {
      return Icons.cancel;
    } else if (lowerStatus.contains('تم التأكد') || lowerStatus.contains('confirmed')) {
      return Icons.check_circle_outline;
    }
    return Icons.info_outline;
  }

  // Helper to get animal icon (using general Material Icons)
  IconData _getAnimalIcon(String animalType) {
    switch (animalType.toLowerCase()) {
      case 'الابقار':
        return Icons.grass; // General icon for cattle/farm
      case 'الجاموس':
        return Icons.pets; // General pet icon
      case 'الاغنام':
        return Icons.filter_hdr; // Generic mountain/landscape type icon
      case 'الماعز':
        return Icons.landscape; // Generic landscape icon
      case 'الدواجن':
        return Icons.egg_alt; // Egg icon for poultry
      case 'القطط':
        return Icons.pets;
      case 'الكلاب':
        return Icons.pets;
      default:
        return Icons.question_mark; // Unknown or generic icon
    }
  }

  // Apply filters and search query to _filteredReports
  void _applyFilters() {
    setState(() {
      _filteredReports = widget.allReports.where((report) {
        final matchesSearch = _searchQuery.isEmpty ||
            report.animalType.toLowerCase().contains(_searchQuery.toLowerCase()) ||
            _getMainDisease(report.originDetermination).toLowerCase().contains(_searchQuery.toLowerCase()) ||
            (report.governorate?.toLowerCase().contains(_searchQuery.toLowerCase()) ?? false) ||
            report.status.toLowerCase().contains(_searchQuery.toLowerCase()) ||
            report.id.toLowerCase().contains(_searchQuery.toLowerCase()); // Allow searching full ID or partial

        final matchesStatus = _selectedStatusFilter == null ||
            report.status.toLowerCase() == _selectedStatusFilter!.toLowerCase();

        final matchesAnimalType = _selectedAnimalTypeFilter == null ||
            report.animalType.toLowerCase() == _selectedAnimalTypeFilter!.toLowerCase();

        final matchesGovernorate = _selectedGovernorateFilter == null ||
            (report.governorate?.toLowerCase() == _selectedGovernorateFilter!.toLowerCase());

        return matchesSearch && matchesStatus && matchesAnimalType && matchesGovernorate;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    // Collect unique values for dropdown filters from the full list of reports
    final List<String> uniqueStatuses = widget.allReports.map((r) => r.status).toSet().toList();
    final List<String> uniqueAnimalTypes = widget.allReports.map((r) => r.animalType).toSet().toList();
    final List<String> uniqueGovernorates = widget.allReports.map((r) => r.governorate).whereType<String>().toSet().toList(); // Filter out nulls

    return Scaffold(
      backgroundColor: ColorsManager.greenWhite,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            color: ColorsManager.moreWhite,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: ColorsManager.darkGreenText),
                  onPressed: () => Navigator.pop(context),
                ),
                Text(
                  'تقارير البلاغات',
                  style: CairoTextStyles.bold.copyWith(fontSize: 24, color: ColorsManager.darkGreenText),
                ),
              ],
            ),
          ),
          // Search and Filters Section
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'البحث برقم البلاغ، نوع الحيوان، المرض أو المحافظة...',
                    hintStyle: CairoTextStyles.regular.copyWith(color: ColorsManager.textGrey),
                    prefixIcon: const Icon(Icons.search, color: ColorsManager.textGrey),
                    filled: true,
                    fillColor: ColorsManager.moreWhite,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  ),
                  onChanged: (value) {
                    _searchQuery = value;
                    _applyFilters();
                  },
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'الحالة',
                          labelStyle: CairoTextStyles.regular.copyWith(color: ColorsManager.textGrey),
                          filled: true,
                          fillColor: ColorsManager.moreWhite,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        value: _selectedStatusFilter,
                        hint: Text('اختر الحالة', style: CairoTextStyles.regular.copyWith(color: ColorsManager.textGrey)),
                        items: [
                          const DropdownMenuItem(value: null, child: Text('كل الحالات', style: TextStyle(color: ColorsManager.black))),
                          ...uniqueStatuses.map((status) => DropdownMenuItem(
                            value: status,
                            child: Text(status, style: TextStyle(color: _getStatusColor(status))),
                          )),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _selectedStatusFilter = value;
                            _applyFilters();
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'نوع الحيوان',
                          labelStyle: CairoTextStyles.regular.copyWith(color: ColorsManager.textGrey),
                          filled: true,
                          fillColor: ColorsManager.moreWhite,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        value: _selectedAnimalTypeFilter,
                        hint: Text('اختر النوع', style: CairoTextStyles.regular.copyWith(color: ColorsManager.textGrey)),
                        items: [
                          const DropdownMenuItem(value: null, child: Text('كل الأنواع', style: TextStyle(color: ColorsManager.black))),
                          ...uniqueAnimalTypes.map((type) => DropdownMenuItem(
                            value: type,
                            child: Text(type, style: CairoTextStyles.regular.copyWith(color: ColorsManager.black)),
                          )),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _selectedAnimalTypeFilter = value;
                            _applyFilters();
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'المحافظة',
                          labelStyle: CairoTextStyles.regular.copyWith(color: ColorsManager.textGrey),
                          filled: true,
                          fillColor: ColorsManager.moreWhite,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        value: _selectedGovernorateFilter,
                        hint: Text('اختر المحافظة', style: CairoTextStyles.regular.copyWith(color: ColorsManager.textGrey)),
                        items: [
                          const DropdownMenuItem(value: null, child: Text('كل المحافظات', style: TextStyle(color: ColorsManager.black))),
                          ...uniqueGovernorates.map((governorate) => DropdownMenuItem(
                            value: governorate,
                            child: Text(governorate, style: CairoTextStyles.regular.copyWith(color: ColorsManager.black)),
                          )),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _selectedGovernorateFilter = value;
                            _applyFilters();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Reports List
          Expanded(
            child: _filteredReports.isEmpty
                ? Center(
              child: Text(
                'لا توجد تقارير مطابقة للمعايير المحددة.',
                style: CairoTextStyles.regular.copyWith(color: ColorsManager.textGrey),
              ),
            )
                : ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              itemCount: _filteredReports.length,
              itemBuilder: (context, index) {
                final report = _filteredReports[index];
                return ReportCard(report: report);
              },
            ),
          ),
        ],
      ),
    );
  }
}

// A dedicated widget for a single report card
class ReportCard extends StatelessWidget {
  final Report report;

  const ReportCard({super.key, required this.report});

  String _getMainDisease(OriginDetermination origin) {
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

  Color _getStatusColor(String status) {
    final lowerStatus = status.toLowerCase();
    if (lowerStatus.contains('قيد المراجعة') || lowerStatus.contains('pending')) {
      return ColorsManager.orange;
    } else if (lowerStatus.contains('مغلق') || lowerStatus.contains('closed')) {
      return ColorsManager.red;
    } else if (lowerStatus.contains('تم التأكد') || lowerStatus.contains('confirmed')) {
      return ColorsManager.mainGreen;
    }
    return ColorsManager.textGrey;
  }

  IconData _getStatusIcon(String status) {
    final lowerStatus = status.toLowerCase();
    if (lowerStatus.contains('قيد المراجعة') || lowerStatus.contains('pending')) {
      return Icons.pending_actions;
    } else if (lowerStatus.contains('مغلق') || lowerStatus.contains('closed')) {
      return Icons.cancel;
    } else if (lowerStatus.contains('تم التأكد') || lowerStatus.contains('confirmed')) {
      return Icons.check_circle_outline;
    }
    return Icons.info_outline;
  }

  // Helper to get animal icon (using general Material Icons)
  IconData _getAnimalIcon(String animalType) {
    switch (animalType.toLowerCase()) {
      case 'الابقار':
        return Icons.grass;
      case 'الجاموس':
        return Icons.pets;
      case 'الاغنام':
        return Icons.filter_hdr;
      case 'الماعز':
        return Icons.landscape;
      case 'الدواجن':
        return Icons.egg_alt;
      case 'القطط':
        return Icons.pets;
      case 'الكلاب':
        return Icons.pets;
      default:
        return Icons.question_mark;
    }
  }

  @override
  Widget build(BuildContext context) {
    final diseaseName = _getMainDisease(report.originDetermination);
    final governorateName = report.governorate ?? 'غير محدد';
    final statusColor = _getStatusColor(report.status);
    final statusIcon = _getStatusIcon(report.status);
    final animalIcon = _getAnimalIcon(report.animalType);

    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: ColorsManager.moreWhite,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(animalIcon, color: ColorsManager.mainGreen, size: 28),
                    const SizedBox(width: 10),
                    Text(
                      report.animalType,
                      style: CairoTextStyles.bold.copyWith(fontSize: 18, color: ColorsManager.darkGreenText),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: statusColor.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Icon(statusIcon, color: statusColor, size: 18),
                      const SizedBox(width: 5),
                      Text(
                        report.status,
                        style: CairoTextStyles.medium.copyWith(fontSize: 14, color: statusColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(height: 25, color: ColorsManager.lightGrey),
            _buildInfoRow(Icons.sick_outlined, 'المرض:', diseaseName),
            _buildInfoRow(Icons.location_on_outlined, 'المحافظة:', governorateName),
            _buildInfoRow(Icons.person_outline, 'المسؤول:', report.contactInformation.responsiblePersonName),
            _buildInfoRow(Icons.phone_outlined, 'الهاتف:', report.contactInformation.responsiblePersonPhone),
            _buildInfoRow(Icons.calendar_today_outlined, 'تاريخ البلاغ:', report.createdAt != null ? report.createdAt!.split('T').first : 'غير متاح'),
            const SizedBox(height: 15),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton.icon(
                onPressed: () {
                  _showReportDetailsDialog(context, report);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsManager.mainGreen,
                  foregroundColor: ColorsManager.moreWhite,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                icon: const Icon(Icons.info_outline, size: 20),
                label: Text('عرض التفاصيل', style: CairoTextStyles.semiBold.copyWith(fontSize: 14)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper widget to build a consistent info row for details
  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: ColorsManager.textGrey, size: 20),
          const SizedBox(width: 10),
          Text(
            label,
            style: CairoTextStyles.medium.copyWith(fontSize: 14, color: ColorsManager.darkGreenText),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Text(
              value,
              style: CairoTextStyles.regular.copyWith(fontSize: 14, color: ColorsManager.black),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }

  // Dialog to show full report details - MODIFIED SECTION
  void _showReportDetailsDialog(BuildContext context, Report report) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog( // Changed from AlertDialog to Dialog for more control
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: ColorsManager.greenWhite,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.6, // Adjust width as needed
            constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.8), // Max height
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'تفاصيل البلاغ',
                            style: CairoTextStyles.bold.copyWith(color: ColorsManager.darkGreenText, fontSize: 24),
                          ),
                          Text(
                            'ID: ${report.id.substring(0, 8)}',
                            style: CairoTextStyles.regular.copyWith(color: ColorsManager.textGrey, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close, color: ColorsManager.textGrey),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
                const Divider(height: 25, thickness: 1, color: ColorsManager.lightGrey),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _buildSectionTitle('معلومات أساسية'),
                        _buildDetailRowWithIcon(Icons.category_outlined, 'نوع الحيوان:', report.animalType),
                        _buildDetailRowWithIcon(Icons.sick_outlined, 'المرض الأساسي:', _getMainDisease(report.originDetermination)),
                        _buildDetailRowWithIcon(Icons.location_on_outlined, 'المحافظة:', report.governorate ?? 'غير محدد'),
                        _buildDetailRowWithIcon(Icons.info_outline, 'الحالة:', report.status),
                        _buildDetailRowWithIcon(Icons.calendar_today_outlined, 'تاريخ الإنشاء:', report.createdAt != null ? report.createdAt!.split('T').first : 'غير متاح'),
                        _buildDetailRowWithIcon(Icons.update_outlined, 'آخر تحديث:', report.updatedAt != null ? report.updatedAt!.split('T').first : 'غير متاح'),

                        _buildSectionTitle('معلومات التواصل'),
                        _buildDetailRowWithIcon(Icons.person_outline, 'اسم المسؤول:', report.contactInformation.responsiblePersonName),
                        _buildDetailRowWithIcon(Icons.phone_outlined, 'رقم الهاتف:', report.contactInformation.responsiblePersonPhone),
                        _buildDetailRowWithIcon(Icons.location_city_outlined, 'العنوان:', report.contactInformation.caseAddress),

                        _buildSectionTitle('الأسئلة التشخيصية'),
                        _buildDetailRowWithIcon(Icons.healing_outlined, 'السلوك الطبيعي:', report.diagnosticQuestions.naturalBehavior),
                        _buildDetailRowWithIcon(Icons.water_drop_outlined, 'يشرب الماء:', report.diagnosticQuestions.drinksWater),
                        _buildDetailRowWithIcon(Icons.directions_run_outlined, 'يتحرك عادة:', report.diagnosticQuestions.movesNormally),
                        _buildDetailRowWithIcon(Icons.air_outlined, 'يتنفس عادة:', report.diagnosticQuestions.breathingNormally),
                        _buildDetailRowWithIcon(Icons.checklist_rtl_outlined, 'إخراج منتظم:', report.diagnosticQuestions.regularExcretion),
                        _buildDetailRowWithIcon(Icons.texture_outlined, 'تساقط شعر/مشاكل جلدية:', report.diagnosticQuestions.hairLossOrSkinIssues),
                        _buildDetailRowWithIcon(Icons.history_outlined, 'أعراض مشابهة سابقة:', report.diagnosticQuestions.previousSimilarSymptoms),
                        _buildDetailRowWithIcon(Icons.vaccines_outlined, 'تطعيمات محدثة:', report.diagnosticQuestions.vaccinationsUpToDate),
                        _buildDetailRowWithIcon(Icons.psychology_outlined, 'تغير سلوك حديث:', report.diagnosticQuestions.recentBehaviorChange),

                        if (report.notes != null && report.notes!.isNotEmpty) ...[
                          _buildSectionTitle('ملاحظات'),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(report.notes!, style: CairoTextStyles.regular.copyWith(color: ColorsManager.black, fontSize: 16)),
                          ),
                        ],

                        if (report.images.isNotEmpty) ...[
                          _buildSectionTitle('الصور المرفقة'),
                          const SizedBox(height: 10),
                          Wrap(
                            spacing: 15.0,
                            runSpacing: 15.0,
                            children: report.images.map((image) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  image.url,
                                  width: 120,
                                  height: 120,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) => Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      color: ColorsManager.lightGrey,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Center(
                                      child: Icon(Icons.broken_image, color: ColorsManager.textGrey, size: 40),
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsManager.mainGreen,
                      foregroundColor: ColorsManager.moreWhite,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    child: Text('إغلاق', style: CairoTextStyles.medium.copyWith(color: ColorsManager.moreWhite, fontSize: 16)),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // New helper for section titles within the dialog
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
      child: Text(
        title,
        style: CairoTextStyles.bold.copyWith(fontSize: 18, color: ColorsManager.mainGreen),
      ),
    );
  }

  // New helper for detail rows with icons within the dialog
  Widget _buildDetailRowWithIcon(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: ColorsManager.textGrey, size: 20),
          const SizedBox(width: 12),
          Text(
            label,
            style: CairoTextStyles.medium.copyWith(fontSize: 15, color: ColorsManager.darkGreenText),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              style: CairoTextStyles.regular.copyWith(fontSize: 15, color: ColorsManager.black),
              textAlign: TextAlign.end,
              overflow: TextOverflow.visible,
            ),
          ),
        ],
      ),
    );
  }
}
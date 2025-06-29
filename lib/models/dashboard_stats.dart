// updated_dashboard_stats.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dashboard_stats.freezed.dart';
part 'dashboard_stats.g.dart';

@freezed
class DashboardStatsResponse with _$DashboardStatsResponse {
  const factory DashboardStatsResponse({
    required bool success,
    Stats? stats,
    List<Report>? reports,
  }) = _DashboardStatsResponse;

  factory DashboardStatsResponse.fromJson(Map<String, dynamic> json) =>
      _$DashboardStatsResponseFromJson(json);
}

@freezed
class Stats with _$Stats {
  const factory Stats({
    required int todayCount,
    required int yesterdayCount,
    required String changePercent,
    required ChangeDetails changeDetails,
    required int unknownCount,
    required List<TopGovernorate> topGovernorates,
    required List<TopDiseaseElement> topDiseases,
    required List<MapPoint> mapPoints,
    required ResponseEfficiency responseEfficiency,
  }) = _Stats;

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);
}

@freezed
class ChangeDetails with _$ChangeDetails {
  const factory ChangeDetails({
    required int today,
    required int yesterday,
    required String percent,
  }) = _ChangeDetails;

  factory ChangeDetails.fromJson(Map<String, dynamic> json) =>
      _$ChangeDetailsFromJson(json);
}

@freezed
class MapPoint with _$MapPoint {
  const factory MapPoint({
    required double lat,
    required double lng,
    required String animalType,
    required String disease,
    String? governorate,
  }) = _MapPoint;

  factory MapPoint.fromJson(Map<String, dynamic> json) =>
      _$MapPointFromJson(json);
}

@freezed
class Report with _$Report {
  const factory Report({
    required String id,
    required String animalType,
    required OriginDetermination originDetermination,
    required DiagnosticQuestions diagnosticQuestions,
    required ContactInformation contactInformation,
    required List<ImageInfo> images,
    String? notes,
    required String status,
    String? governorate,
    String? createdAt,
    String? updatedAt,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) =>
      _$ReportFromJson(json);
}

@freezed
class OriginDetermination with _$OriginDetermination {
  const factory OriginDetermination({
    @Default([]) @JsonKey(defaultValue: []) List<String> insectRelatedIssues,
    @Default([]) @JsonKey(defaultValue: []) List<String> bacterialIssues,
    @Default([]) @JsonKey(defaultValue: []) List<String> viralIssues,
    @Default([]) @JsonKey(defaultValue: []) List<String> infectionsAndParasites,
    @Default([]) @JsonKey(defaultValue: []) List<String> newIssues,
    @Default([]) @JsonKey(defaultValue: []) List<String> respiratoryIssues,
    @Default([]) @JsonKey(defaultValue: []) List<String> traumasAndInheritance,
    @Default([]) @JsonKey(defaultValue: []) List<String> notDetermined,
  }) = _OriginDetermination;

  factory OriginDetermination.fromJson(Map<String, dynamic> json) =>
      _$OriginDeterminationFromJson(json);
}

@freezed
class DiagnosticQuestions with _$DiagnosticQuestions {
  const factory DiagnosticQuestions({
    required String naturalBehavior,
    required String drinksWater,
    required String movesNormally,
    required String breathingNormally,
    required String regularExcretion,
    required String hairLossOrSkinIssues,
    required String previousSimilarSymptoms,
    required String vaccinationsUpToDate,
    required String recentBehaviorChange,
  }) = _DiagnosticQuestions;

  factory DiagnosticQuestions.fromJson(Map<String, dynamic> json) =>
      _$DiagnosticQuestionsFromJson(json);
}

@freezed
class ContactInformation with _$ContactInformation {
  const factory ContactInformation({
    required CaseLocation caseLocation,
    required String responsiblePersonName,
    required String responsiblePersonPhone,
    required String caseAddress,
  }) = _ContactInformation;

  factory ContactInformation.fromJson(Map<String, dynamic> json) =>
      _$ContactInformationFromJson(json);
}

@freezed
class CaseLocation with _$CaseLocation {
  const factory CaseLocation({
    required String type,
    required List<double> coordinates,
  }) = _CaseLocation;

  factory CaseLocation.fromJson(Map<String, dynamic> json) =>
      _$CaseLocationFromJson(json);
}

@freezed
class ImageInfo with _$ImageInfo {
  const factory ImageInfo({
    required String url,
    required String publicId,
    @JsonKey(name: '_id') required String id,
  }) = _ImageInfo;

  factory ImageInfo.fromJson(Map<String, dynamic> json) =>
      _$ImageInfoFromJson(json);
}

@freezed
class ResponseEfficiency with _$ResponseEfficiency {
  const factory ResponseEfficiency({
    required String avgResolutionTime,
    required String resolutionRate,
    required List<dynamic> delayedRegions,
  }) = _ResponseEfficiency;

  factory ResponseEfficiency.fromJson(Map<String, dynamic> json) =>
      _$ResponseEfficiencyFromJson(json);
}

@freezed
class TopDiseaseElement with _$TopDiseaseElement {
  const factory TopDiseaseElement({
    required int count,
    required TopDiseaseElementDisease disease,
  }) = _TopDiseaseElement;

  factory TopDiseaseElement.fromJson(Map<String, dynamic> json) =>
      _$TopDiseaseElementFromJson(json);
}

@freezed
class TopDiseaseElementDisease with _$TopDiseaseElementDisease {
  const factory TopDiseaseElementDisease({
    @JsonKey(name: "Insect-Borne Diseases") required int insectBorneDiseases,
    @JsonKey(name: "Bacterial Diseases") required int bacterialDiseases,
    @JsonKey(name: "Viral Diseases") required int viralDiseases,
  }) = _TopDiseaseElementDisease;

  factory TopDiseaseElementDisease.fromJson(Map<String, dynamic> json) =>
      _$TopDiseaseElementDiseaseFromJson(json);
}

@freezed
class TopGovernorate with _$TopGovernorate {
  const factory TopGovernorate({
    dynamic governorate,
    required List<TopGovernorateTopDisease> topDiseases,
  }) = _TopGovernorate;

  factory TopGovernorate.fromJson(Map<String, dynamic> json) =>
      _$TopGovernorateFromJson(json);
}

@freezed
class TopGovernorateTopDisease with _$TopGovernorateTopDisease {
  const factory TopGovernorateTopDisease({
    required String disease,
    required int count,
  }) = _TopGovernorateTopDisease;

  factory TopGovernorateTopDisease.fromJson(Map<String, dynamic> json) =>
      _$TopGovernorateTopDiseaseFromJson(json);
}
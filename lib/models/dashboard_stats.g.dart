// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardStatsResponseImpl _$$DashboardStatsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DashboardStatsResponseImpl(
      success: json['success'] as bool,
      stats: json['stats'] == null
          ? null
          : Stats.fromJson(json['stats'] as Map<String, dynamic>),
      reports: (json['reports'] as List<dynamic>?)
          ?.map((e) => Report.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DashboardStatsResponseImplToJson(
        _$DashboardStatsResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'stats': instance.stats,
      'reports': instance.reports,
    };

_$StatsImpl _$$StatsImplFromJson(Map<String, dynamic> json) => _$StatsImpl(
      todayCount: (json['todayCount'] as num).toInt(),
      yesterdayCount: (json['yesterdayCount'] as num).toInt(),
      changePercent: json['changePercent'] as String,
      changeDetails:
          ChangeDetails.fromJson(json['changeDetails'] as Map<String, dynamic>),
      unknownCount: (json['unknownCount'] as num).toInt(),
      topGovernorates: (json['topGovernorates'] as List<dynamic>)
          .map((e) => TopGovernorate.fromJson(e as Map<String, dynamic>))
          .toList(),
      topDiseases: (json['topDiseases'] as List<dynamic>)
          .map((e) => TopDiseaseElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      mapPoints: (json['mapPoints'] as List<dynamic>)
          .map((e) => MapPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      responseEfficiency: ResponseEfficiency.fromJson(
          json['responseEfficiency'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StatsImplToJson(_$StatsImpl instance) =>
    <String, dynamic>{
      'todayCount': instance.todayCount,
      'yesterdayCount': instance.yesterdayCount,
      'changePercent': instance.changePercent,
      'changeDetails': instance.changeDetails,
      'unknownCount': instance.unknownCount,
      'topGovernorates': instance.topGovernorates,
      'topDiseases': instance.topDiseases,
      'mapPoints': instance.mapPoints,
      'responseEfficiency': instance.responseEfficiency,
    };

_$ChangeDetailsImpl _$$ChangeDetailsImplFromJson(Map<String, dynamic> json) =>
    _$ChangeDetailsImpl(
      today: (json['today'] as num).toInt(),
      yesterday: (json['yesterday'] as num).toInt(),
      percent: json['percent'] as String,
    );

Map<String, dynamic> _$$ChangeDetailsImplToJson(_$ChangeDetailsImpl instance) =>
    <String, dynamic>{
      'today': instance.today,
      'yesterday': instance.yesterday,
      'percent': instance.percent,
    };

_$MapPointImpl _$$MapPointImplFromJson(Map<String, dynamic> json) =>
    _$MapPointImpl(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      animalType: json['animalType'] as String,
      disease: json['disease'] as String,
      governorate: json['governorate'] as String?,
    );

Map<String, dynamic> _$$MapPointImplToJson(_$MapPointImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'animalType': instance.animalType,
      'disease': instance.disease,
      'governorate': instance.governorate,
    };

_$ReportImpl _$$ReportImplFromJson(Map<String, dynamic> json) => _$ReportImpl(
      id: json['id'] as String,
      animalType: json['animalType'] as String,
      originDetermination: OriginDetermination.fromJson(
          json['originDetermination'] as Map<String, dynamic>),
      diagnosticQuestions: DiagnosticQuestions.fromJson(
          json['diagnosticQuestions'] as Map<String, dynamic>),
      contactInformation: ContactInformation.fromJson(
          json['contactInformation'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      notes: json['notes'] as String?,
      status: json['status'] as String,
      governorate: json['governorate'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$ReportImplToJson(_$ReportImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'animalType': instance.animalType,
      'originDetermination': instance.originDetermination,
      'diagnosticQuestions': instance.diagnosticQuestions,
      'contactInformation': instance.contactInformation,
      'images': instance.images,
      'notes': instance.notes,
      'status': instance.status,
      'governorate': instance.governorate,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$OriginDeterminationImpl _$$OriginDeterminationImplFromJson(
        Map<String, dynamic> json) =>
    _$OriginDeterminationImpl(
      insectRelatedIssues: (json['insectRelatedIssues'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      bacterialIssues: (json['bacterialIssues'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      viralIssues: (json['viralIssues'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      infectionsAndParasites: (json['infectionsAndParasites'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      newIssues: (json['newIssues'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      respiratoryIssues: (json['respiratoryIssues'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      traumasAndInheritance: (json['traumasAndInheritance'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      notDetermined: (json['notDetermined'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$$OriginDeterminationImplToJson(
        _$OriginDeterminationImpl instance) =>
    <String, dynamic>{
      'insectRelatedIssues': instance.insectRelatedIssues,
      'bacterialIssues': instance.bacterialIssues,
      'viralIssues': instance.viralIssues,
      'infectionsAndParasites': instance.infectionsAndParasites,
      'newIssues': instance.newIssues,
      'respiratoryIssues': instance.respiratoryIssues,
      'traumasAndInheritance': instance.traumasAndInheritance,
      'notDetermined': instance.notDetermined,
    };

_$DiagnosticQuestionsImpl _$$DiagnosticQuestionsImplFromJson(
        Map<String, dynamic> json) =>
    _$DiagnosticQuestionsImpl(
      naturalBehavior: json['naturalBehavior'] as String,
      drinksWater: json['drinksWater'] as String,
      movesNormally: json['movesNormally'] as String,
      breathingNormally: json['breathingNormally'] as String,
      regularExcretion: json['regularExcretion'] as String,
      hairLossOrSkinIssues: json['hairLossOrSkinIssues'] as String,
      previousSimilarSymptoms: json['previousSimilarSymptoms'] as String,
      vaccinationsUpToDate: json['vaccinationsUpToDate'] as String,
      recentBehaviorChange: json['recentBehaviorChange'] as String,
    );

Map<String, dynamic> _$$DiagnosticQuestionsImplToJson(
        _$DiagnosticQuestionsImpl instance) =>
    <String, dynamic>{
      'naturalBehavior': instance.naturalBehavior,
      'drinksWater': instance.drinksWater,
      'movesNormally': instance.movesNormally,
      'breathingNormally': instance.breathingNormally,
      'regularExcretion': instance.regularExcretion,
      'hairLossOrSkinIssues': instance.hairLossOrSkinIssues,
      'previousSimilarSymptoms': instance.previousSimilarSymptoms,
      'vaccinationsUpToDate': instance.vaccinationsUpToDate,
      'recentBehaviorChange': instance.recentBehaviorChange,
    };

_$ContactInformationImpl _$$ContactInformationImplFromJson(
        Map<String, dynamic> json) =>
    _$ContactInformationImpl(
      caseLocation:
          CaseLocation.fromJson(json['caseLocation'] as Map<String, dynamic>),
      responsiblePersonName: json['responsiblePersonName'] as String,
      responsiblePersonPhone: json['responsiblePersonPhone'] as String,
      caseAddress: json['caseAddress'] as String,
    );

Map<String, dynamic> _$$ContactInformationImplToJson(
        _$ContactInformationImpl instance) =>
    <String, dynamic>{
      'caseLocation': instance.caseLocation,
      'responsiblePersonName': instance.responsiblePersonName,
      'responsiblePersonPhone': instance.responsiblePersonPhone,
      'caseAddress': instance.caseAddress,
    };

_$CaseLocationImpl _$$CaseLocationImplFromJson(Map<String, dynamic> json) =>
    _$CaseLocationImpl(
      type: json['type'] as String,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$CaseLocationImplToJson(_$CaseLocationImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };

_$ImageInfoImpl _$$ImageInfoImplFromJson(Map<String, dynamic> json) =>
    _$ImageInfoImpl(
      url: json['url'] as String,
      publicId: json['publicId'] as String,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$ImageInfoImplToJson(_$ImageInfoImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'publicId': instance.publicId,
      '_id': instance.id,
    };

_$ResponseEfficiencyImpl _$$ResponseEfficiencyImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseEfficiencyImpl(
      avgResolutionTime: json['avgResolutionTime'] as String,
      resolutionRate: json['resolutionRate'] as String,
      delayedRegions: json['delayedRegions'] as List<dynamic>,
    );

Map<String, dynamic> _$$ResponseEfficiencyImplToJson(
        _$ResponseEfficiencyImpl instance) =>
    <String, dynamic>{
      'avgResolutionTime': instance.avgResolutionTime,
      'resolutionRate': instance.resolutionRate,
      'delayedRegions': instance.delayedRegions,
    };

_$TopDiseaseElementImpl _$$TopDiseaseElementImplFromJson(
        Map<String, dynamic> json) =>
    _$TopDiseaseElementImpl(
      count: (json['count'] as num).toInt(),
      disease: TopDiseaseElementDisease.fromJson(
          json['disease'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TopDiseaseElementImplToJson(
        _$TopDiseaseElementImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'disease': instance.disease,
    };

_$TopDiseaseElementDiseaseImpl _$$TopDiseaseElementDiseaseImplFromJson(
        Map<String, dynamic> json) =>
    _$TopDiseaseElementDiseaseImpl(
      insectBorneDiseases: (json['Insect-Borne Diseases'] as num).toInt(),
      bacterialDiseases: (json['Bacterial Diseases'] as num).toInt(),
      viralDiseases: (json['Viral Diseases'] as num).toInt(),
    );

Map<String, dynamic> _$$TopDiseaseElementDiseaseImplToJson(
        _$TopDiseaseElementDiseaseImpl instance) =>
    <String, dynamic>{
      'Insect-Borne Diseases': instance.insectBorneDiseases,
      'Bacterial Diseases': instance.bacterialDiseases,
      'Viral Diseases': instance.viralDiseases,
    };

_$TopGovernorateImpl _$$TopGovernorateImplFromJson(Map<String, dynamic> json) =>
    _$TopGovernorateImpl(
      governorate: json['governorate'],
      topDiseases: (json['topDiseases'] as List<dynamic>)
          .map((e) =>
              TopGovernorateTopDisease.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopGovernorateImplToJson(
        _$TopGovernorateImpl instance) =>
    <String, dynamic>{
      'governorate': instance.governorate,
      'topDiseases': instance.topDiseases,
    };

_$TopGovernorateTopDiseaseImpl _$$TopGovernorateTopDiseaseImplFromJson(
        Map<String, dynamic> json) =>
    _$TopGovernorateTopDiseaseImpl(
      disease: json['disease'] as String,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$TopGovernorateTopDiseaseImplToJson(
        _$TopGovernorateTopDiseaseImpl instance) =>
    <String, dynamic>{
      'disease': instance.disease,
      'count': instance.count,
    };

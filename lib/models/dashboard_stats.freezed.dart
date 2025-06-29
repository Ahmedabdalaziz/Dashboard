// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DashboardStatsResponse _$DashboardStatsResponseFromJson(
    Map<String, dynamic> json) {
  return _DashboardStatsResponse.fromJson(json);
}

/// @nodoc
mixin _$DashboardStatsResponse {
  bool get success => throw _privateConstructorUsedError;
  Stats? get stats => throw _privateConstructorUsedError;
  List<Report>? get reports => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardStatsResponseCopyWith<DashboardStatsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStatsResponseCopyWith<$Res> {
  factory $DashboardStatsResponseCopyWith(DashboardStatsResponse value,
          $Res Function(DashboardStatsResponse) then) =
      _$DashboardStatsResponseCopyWithImpl<$Res, DashboardStatsResponse>;
  @useResult
  $Res call({bool success, Stats? stats, List<Report>? reports});

  $StatsCopyWith<$Res>? get stats;
}

/// @nodoc
class _$DashboardStatsResponseCopyWithImpl<$Res,
        $Val extends DashboardStatsResponse>
    implements $DashboardStatsResponseCopyWith<$Res> {
  _$DashboardStatsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? stats = freezed,
    Object? reports = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      stats: freezed == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as Stats?,
      reports: freezed == reports
          ? _value.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<Report>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatsCopyWith<$Res>? get stats {
    if (_value.stats == null) {
      return null;
    }

    return $StatsCopyWith<$Res>(_value.stats!, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardStatsResponseImplCopyWith<$Res>
    implements $DashboardStatsResponseCopyWith<$Res> {
  factory _$$DashboardStatsResponseImplCopyWith(
          _$DashboardStatsResponseImpl value,
          $Res Function(_$DashboardStatsResponseImpl) then) =
      __$$DashboardStatsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Stats? stats, List<Report>? reports});

  @override
  $StatsCopyWith<$Res>? get stats;
}

/// @nodoc
class __$$DashboardStatsResponseImplCopyWithImpl<$Res>
    extends _$DashboardStatsResponseCopyWithImpl<$Res,
        _$DashboardStatsResponseImpl>
    implements _$$DashboardStatsResponseImplCopyWith<$Res> {
  __$$DashboardStatsResponseImplCopyWithImpl(
      _$DashboardStatsResponseImpl _value,
      $Res Function(_$DashboardStatsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? stats = freezed,
    Object? reports = freezed,
  }) {
    return _then(_$DashboardStatsResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      stats: freezed == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as Stats?,
      reports: freezed == reports
          ? _value._reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<Report>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardStatsResponseImpl implements _DashboardStatsResponse {
  const _$DashboardStatsResponseImpl(
      {required this.success, this.stats, final List<Report>? reports})
      : _reports = reports;

  factory _$DashboardStatsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardStatsResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final Stats? stats;
  final List<Report>? _reports;
  @override
  List<Report>? get reports {
    final value = _reports;
    if (value == null) return null;
    if (_reports is EqualUnmodifiableListView) return _reports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DashboardStatsResponse(success: $success, stats: $stats, reports: $reports)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStatsResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.stats, stats) || other.stats == stats) &&
            const DeepCollectionEquality().equals(other._reports, _reports));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, stats,
      const DeepCollectionEquality().hash(_reports));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStatsResponseImplCopyWith<_$DashboardStatsResponseImpl>
      get copyWith => __$$DashboardStatsResponseImplCopyWithImpl<
          _$DashboardStatsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardStatsResponseImplToJson(
      this,
    );
  }
}

abstract class _DashboardStatsResponse implements DashboardStatsResponse {
  const factory _DashboardStatsResponse(
      {required final bool success,
      final Stats? stats,
      final List<Report>? reports}) = _$DashboardStatsResponseImpl;

  factory _DashboardStatsResponse.fromJson(Map<String, dynamic> json) =
      _$DashboardStatsResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Stats? get stats;
  @override
  List<Report>? get reports;
  @override
  @JsonKey(ignore: true)
  _$$DashboardStatsResponseImplCopyWith<_$DashboardStatsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Stats _$StatsFromJson(Map<String, dynamic> json) {
  return _Stats.fromJson(json);
}

/// @nodoc
mixin _$Stats {
  int get todayCount => throw _privateConstructorUsedError;
  int get yesterdayCount => throw _privateConstructorUsedError;
  String get changePercent => throw _privateConstructorUsedError;
  ChangeDetails get changeDetails => throw _privateConstructorUsedError;
  int get unknownCount => throw _privateConstructorUsedError;
  List<TopGovernorate> get topGovernorates =>
      throw _privateConstructorUsedError;
  List<TopDiseaseElement> get topDiseases => throw _privateConstructorUsedError;
  List<MapPoint> get mapPoints => throw _privateConstructorUsedError;
  ResponseEfficiency get responseEfficiency =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsCopyWith<Stats> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsCopyWith<$Res> {
  factory $StatsCopyWith(Stats value, $Res Function(Stats) then) =
      _$StatsCopyWithImpl<$Res, Stats>;
  @useResult
  $Res call(
      {int todayCount,
      int yesterdayCount,
      String changePercent,
      ChangeDetails changeDetails,
      int unknownCount,
      List<TopGovernorate> topGovernorates,
      List<TopDiseaseElement> topDiseases,
      List<MapPoint> mapPoints,
      ResponseEfficiency responseEfficiency});

  $ChangeDetailsCopyWith<$Res> get changeDetails;
  $ResponseEfficiencyCopyWith<$Res> get responseEfficiency;
}

/// @nodoc
class _$StatsCopyWithImpl<$Res, $Val extends Stats>
    implements $StatsCopyWith<$Res> {
  _$StatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayCount = null,
    Object? yesterdayCount = null,
    Object? changePercent = null,
    Object? changeDetails = null,
    Object? unknownCount = null,
    Object? topGovernorates = null,
    Object? topDiseases = null,
    Object? mapPoints = null,
    Object? responseEfficiency = null,
  }) {
    return _then(_value.copyWith(
      todayCount: null == todayCount
          ? _value.todayCount
          : todayCount // ignore: cast_nullable_to_non_nullable
              as int,
      yesterdayCount: null == yesterdayCount
          ? _value.yesterdayCount
          : yesterdayCount // ignore: cast_nullable_to_non_nullable
              as int,
      changePercent: null == changePercent
          ? _value.changePercent
          : changePercent // ignore: cast_nullable_to_non_nullable
              as String,
      changeDetails: null == changeDetails
          ? _value.changeDetails
          : changeDetails // ignore: cast_nullable_to_non_nullable
              as ChangeDetails,
      unknownCount: null == unknownCount
          ? _value.unknownCount
          : unknownCount // ignore: cast_nullable_to_non_nullable
              as int,
      topGovernorates: null == topGovernorates
          ? _value.topGovernorates
          : topGovernorates // ignore: cast_nullable_to_non_nullable
              as List<TopGovernorate>,
      topDiseases: null == topDiseases
          ? _value.topDiseases
          : topDiseases // ignore: cast_nullable_to_non_nullable
              as List<TopDiseaseElement>,
      mapPoints: null == mapPoints
          ? _value.mapPoints
          : mapPoints // ignore: cast_nullable_to_non_nullable
              as List<MapPoint>,
      responseEfficiency: null == responseEfficiency
          ? _value.responseEfficiency
          : responseEfficiency // ignore: cast_nullable_to_non_nullable
              as ResponseEfficiency,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChangeDetailsCopyWith<$Res> get changeDetails {
    return $ChangeDetailsCopyWith<$Res>(_value.changeDetails, (value) {
      return _then(_value.copyWith(changeDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseEfficiencyCopyWith<$Res> get responseEfficiency {
    return $ResponseEfficiencyCopyWith<$Res>(_value.responseEfficiency,
        (value) {
      return _then(_value.copyWith(responseEfficiency: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatsImplCopyWith<$Res> implements $StatsCopyWith<$Res> {
  factory _$$StatsImplCopyWith(
          _$StatsImpl value, $Res Function(_$StatsImpl) then) =
      __$$StatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int todayCount,
      int yesterdayCount,
      String changePercent,
      ChangeDetails changeDetails,
      int unknownCount,
      List<TopGovernorate> topGovernorates,
      List<TopDiseaseElement> topDiseases,
      List<MapPoint> mapPoints,
      ResponseEfficiency responseEfficiency});

  @override
  $ChangeDetailsCopyWith<$Res> get changeDetails;
  @override
  $ResponseEfficiencyCopyWith<$Res> get responseEfficiency;
}

/// @nodoc
class __$$StatsImplCopyWithImpl<$Res>
    extends _$StatsCopyWithImpl<$Res, _$StatsImpl>
    implements _$$StatsImplCopyWith<$Res> {
  __$$StatsImplCopyWithImpl(
      _$StatsImpl _value, $Res Function(_$StatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayCount = null,
    Object? yesterdayCount = null,
    Object? changePercent = null,
    Object? changeDetails = null,
    Object? unknownCount = null,
    Object? topGovernorates = null,
    Object? topDiseases = null,
    Object? mapPoints = null,
    Object? responseEfficiency = null,
  }) {
    return _then(_$StatsImpl(
      todayCount: null == todayCount
          ? _value.todayCount
          : todayCount // ignore: cast_nullable_to_non_nullable
              as int,
      yesterdayCount: null == yesterdayCount
          ? _value.yesterdayCount
          : yesterdayCount // ignore: cast_nullable_to_non_nullable
              as int,
      changePercent: null == changePercent
          ? _value.changePercent
          : changePercent // ignore: cast_nullable_to_non_nullable
              as String,
      changeDetails: null == changeDetails
          ? _value.changeDetails
          : changeDetails // ignore: cast_nullable_to_non_nullable
              as ChangeDetails,
      unknownCount: null == unknownCount
          ? _value.unknownCount
          : unknownCount // ignore: cast_nullable_to_non_nullable
              as int,
      topGovernorates: null == topGovernorates
          ? _value._topGovernorates
          : topGovernorates // ignore: cast_nullable_to_non_nullable
              as List<TopGovernorate>,
      topDiseases: null == topDiseases
          ? _value._topDiseases
          : topDiseases // ignore: cast_nullable_to_non_nullable
              as List<TopDiseaseElement>,
      mapPoints: null == mapPoints
          ? _value._mapPoints
          : mapPoints // ignore: cast_nullable_to_non_nullable
              as List<MapPoint>,
      responseEfficiency: null == responseEfficiency
          ? _value.responseEfficiency
          : responseEfficiency // ignore: cast_nullable_to_non_nullable
              as ResponseEfficiency,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatsImpl implements _Stats {
  const _$StatsImpl(
      {required this.todayCount,
      required this.yesterdayCount,
      required this.changePercent,
      required this.changeDetails,
      required this.unknownCount,
      required final List<TopGovernorate> topGovernorates,
      required final List<TopDiseaseElement> topDiseases,
      required final List<MapPoint> mapPoints,
      required this.responseEfficiency})
      : _topGovernorates = topGovernorates,
        _topDiseases = topDiseases,
        _mapPoints = mapPoints;

  factory _$StatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatsImplFromJson(json);

  @override
  final int todayCount;
  @override
  final int yesterdayCount;
  @override
  final String changePercent;
  @override
  final ChangeDetails changeDetails;
  @override
  final int unknownCount;
  final List<TopGovernorate> _topGovernorates;
  @override
  List<TopGovernorate> get topGovernorates {
    if (_topGovernorates is EqualUnmodifiableListView) return _topGovernorates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topGovernorates);
  }

  final List<TopDiseaseElement> _topDiseases;
  @override
  List<TopDiseaseElement> get topDiseases {
    if (_topDiseases is EqualUnmodifiableListView) return _topDiseases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topDiseases);
  }

  final List<MapPoint> _mapPoints;
  @override
  List<MapPoint> get mapPoints {
    if (_mapPoints is EqualUnmodifiableListView) return _mapPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mapPoints);
  }

  @override
  final ResponseEfficiency responseEfficiency;

  @override
  String toString() {
    return 'Stats(todayCount: $todayCount, yesterdayCount: $yesterdayCount, changePercent: $changePercent, changeDetails: $changeDetails, unknownCount: $unknownCount, topGovernorates: $topGovernorates, topDiseases: $topDiseases, mapPoints: $mapPoints, responseEfficiency: $responseEfficiency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsImpl &&
            (identical(other.todayCount, todayCount) ||
                other.todayCount == todayCount) &&
            (identical(other.yesterdayCount, yesterdayCount) ||
                other.yesterdayCount == yesterdayCount) &&
            (identical(other.changePercent, changePercent) ||
                other.changePercent == changePercent) &&
            (identical(other.changeDetails, changeDetails) ||
                other.changeDetails == changeDetails) &&
            (identical(other.unknownCount, unknownCount) ||
                other.unknownCount == unknownCount) &&
            const DeepCollectionEquality()
                .equals(other._topGovernorates, _topGovernorates) &&
            const DeepCollectionEquality()
                .equals(other._topDiseases, _topDiseases) &&
            const DeepCollectionEquality()
                .equals(other._mapPoints, _mapPoints) &&
            (identical(other.responseEfficiency, responseEfficiency) ||
                other.responseEfficiency == responseEfficiency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      todayCount,
      yesterdayCount,
      changePercent,
      changeDetails,
      unknownCount,
      const DeepCollectionEquality().hash(_topGovernorates),
      const DeepCollectionEquality().hash(_topDiseases),
      const DeepCollectionEquality().hash(_mapPoints),
      responseEfficiency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsImplCopyWith<_$StatsImpl> get copyWith =>
      __$$StatsImplCopyWithImpl<_$StatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatsImplToJson(
      this,
    );
  }
}

abstract class _Stats implements Stats {
  const factory _Stats(
      {required final int todayCount,
      required final int yesterdayCount,
      required final String changePercent,
      required final ChangeDetails changeDetails,
      required final int unknownCount,
      required final List<TopGovernorate> topGovernorates,
      required final List<TopDiseaseElement> topDiseases,
      required final List<MapPoint> mapPoints,
      required final ResponseEfficiency responseEfficiency}) = _$StatsImpl;

  factory _Stats.fromJson(Map<String, dynamic> json) = _$StatsImpl.fromJson;

  @override
  int get todayCount;
  @override
  int get yesterdayCount;
  @override
  String get changePercent;
  @override
  ChangeDetails get changeDetails;
  @override
  int get unknownCount;
  @override
  List<TopGovernorate> get topGovernorates;
  @override
  List<TopDiseaseElement> get topDiseases;
  @override
  List<MapPoint> get mapPoints;
  @override
  ResponseEfficiency get responseEfficiency;
  @override
  @JsonKey(ignore: true)
  _$$StatsImplCopyWith<_$StatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChangeDetails _$ChangeDetailsFromJson(Map<String, dynamic> json) {
  return _ChangeDetails.fromJson(json);
}

/// @nodoc
mixin _$ChangeDetails {
  int get today => throw _privateConstructorUsedError;
  int get yesterday => throw _privateConstructorUsedError;
  String get percent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeDetailsCopyWith<ChangeDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeDetailsCopyWith<$Res> {
  factory $ChangeDetailsCopyWith(
          ChangeDetails value, $Res Function(ChangeDetails) then) =
      _$ChangeDetailsCopyWithImpl<$Res, ChangeDetails>;
  @useResult
  $Res call({int today, int yesterday, String percent});
}

/// @nodoc
class _$ChangeDetailsCopyWithImpl<$Res, $Val extends ChangeDetails>
    implements $ChangeDetailsCopyWith<$Res> {
  _$ChangeDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? today = null,
    Object? yesterday = null,
    Object? percent = null,
  }) {
    return _then(_value.copyWith(
      today: null == today
          ? _value.today
          : today // ignore: cast_nullable_to_non_nullable
              as int,
      yesterday: null == yesterday
          ? _value.yesterday
          : yesterday // ignore: cast_nullable_to_non_nullable
              as int,
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeDetailsImplCopyWith<$Res>
    implements $ChangeDetailsCopyWith<$Res> {
  factory _$$ChangeDetailsImplCopyWith(
          _$ChangeDetailsImpl value, $Res Function(_$ChangeDetailsImpl) then) =
      __$$ChangeDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int today, int yesterday, String percent});
}

/// @nodoc
class __$$ChangeDetailsImplCopyWithImpl<$Res>
    extends _$ChangeDetailsCopyWithImpl<$Res, _$ChangeDetailsImpl>
    implements _$$ChangeDetailsImplCopyWith<$Res> {
  __$$ChangeDetailsImplCopyWithImpl(
      _$ChangeDetailsImpl _value, $Res Function(_$ChangeDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? today = null,
    Object? yesterday = null,
    Object? percent = null,
  }) {
    return _then(_$ChangeDetailsImpl(
      today: null == today
          ? _value.today
          : today // ignore: cast_nullable_to_non_nullable
              as int,
      yesterday: null == yesterday
          ? _value.yesterday
          : yesterday // ignore: cast_nullable_to_non_nullable
              as int,
      percent: null == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeDetailsImpl implements _ChangeDetails {
  const _$ChangeDetailsImpl(
      {required this.today, required this.yesterday, required this.percent});

  factory _$ChangeDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeDetailsImplFromJson(json);

  @override
  final int today;
  @override
  final int yesterday;
  @override
  final String percent;

  @override
  String toString() {
    return 'ChangeDetails(today: $today, yesterday: $yesterday, percent: $percent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDetailsImpl &&
            (identical(other.today, today) || other.today == today) &&
            (identical(other.yesterday, yesterday) ||
                other.yesterday == yesterday) &&
            (identical(other.percent, percent) || other.percent == percent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, today, yesterday, percent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeDetailsImplCopyWith<_$ChangeDetailsImpl> get copyWith =>
      __$$ChangeDetailsImplCopyWithImpl<_$ChangeDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeDetailsImplToJson(
      this,
    );
  }
}

abstract class _ChangeDetails implements ChangeDetails {
  const factory _ChangeDetails(
      {required final int today,
      required final int yesterday,
      required final String percent}) = _$ChangeDetailsImpl;

  factory _ChangeDetails.fromJson(Map<String, dynamic> json) =
      _$ChangeDetailsImpl.fromJson;

  @override
  int get today;
  @override
  int get yesterday;
  @override
  String get percent;
  @override
  @JsonKey(ignore: true)
  _$$ChangeDetailsImplCopyWith<_$ChangeDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MapPoint _$MapPointFromJson(Map<String, dynamic> json) {
  return _MapPoint.fromJson(json);
}

/// @nodoc
mixin _$MapPoint {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  String get animalType => throw _privateConstructorUsedError;
  String get disease => throw _privateConstructorUsedError;
  String? get governorate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapPointCopyWith<MapPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapPointCopyWith<$Res> {
  factory $MapPointCopyWith(MapPoint value, $Res Function(MapPoint) then) =
      _$MapPointCopyWithImpl<$Res, MapPoint>;
  @useResult
  $Res call(
      {double lat,
      double lng,
      String animalType,
      String disease,
      String? governorate});
}

/// @nodoc
class _$MapPointCopyWithImpl<$Res, $Val extends MapPoint>
    implements $MapPointCopyWith<$Res> {
  _$MapPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? animalType = null,
    Object? disease = null,
    Object? governorate = freezed,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      animalType: null == animalType
          ? _value.animalType
          : animalType // ignore: cast_nullable_to_non_nullable
              as String,
      disease: null == disease
          ? _value.disease
          : disease // ignore: cast_nullable_to_non_nullable
              as String,
      governorate: freezed == governorate
          ? _value.governorate
          : governorate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapPointImplCopyWith<$Res>
    implements $MapPointCopyWith<$Res> {
  factory _$$MapPointImplCopyWith(
          _$MapPointImpl value, $Res Function(_$MapPointImpl) then) =
      __$$MapPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double lat,
      double lng,
      String animalType,
      String disease,
      String? governorate});
}

/// @nodoc
class __$$MapPointImplCopyWithImpl<$Res>
    extends _$MapPointCopyWithImpl<$Res, _$MapPointImpl>
    implements _$$MapPointImplCopyWith<$Res> {
  __$$MapPointImplCopyWithImpl(
      _$MapPointImpl _value, $Res Function(_$MapPointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
    Object? animalType = null,
    Object? disease = null,
    Object? governorate = freezed,
  }) {
    return _then(_$MapPointImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      animalType: null == animalType
          ? _value.animalType
          : animalType // ignore: cast_nullable_to_non_nullable
              as String,
      disease: null == disease
          ? _value.disease
          : disease // ignore: cast_nullable_to_non_nullable
              as String,
      governorate: freezed == governorate
          ? _value.governorate
          : governorate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapPointImpl implements _MapPoint {
  const _$MapPointImpl(
      {required this.lat,
      required this.lng,
      required this.animalType,
      required this.disease,
      this.governorate});

  factory _$MapPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapPointImplFromJson(json);

  @override
  final double lat;
  @override
  final double lng;
  @override
  final String animalType;
  @override
  final String disease;
  @override
  final String? governorate;

  @override
  String toString() {
    return 'MapPoint(lat: $lat, lng: $lng, animalType: $animalType, disease: $disease, governorate: $governorate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapPointImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.animalType, animalType) ||
                other.animalType == animalType) &&
            (identical(other.disease, disease) || other.disease == disease) &&
            (identical(other.governorate, governorate) ||
                other.governorate == governorate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, lat, lng, animalType, disease, governorate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapPointImplCopyWith<_$MapPointImpl> get copyWith =>
      __$$MapPointImplCopyWithImpl<_$MapPointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapPointImplToJson(
      this,
    );
  }
}

abstract class _MapPoint implements MapPoint {
  const factory _MapPoint(
      {required final double lat,
      required final double lng,
      required final String animalType,
      required final String disease,
      final String? governorate}) = _$MapPointImpl;

  factory _MapPoint.fromJson(Map<String, dynamic> json) =
      _$MapPointImpl.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  String get animalType;
  @override
  String get disease;
  @override
  String? get governorate;
  @override
  @JsonKey(ignore: true)
  _$$MapPointImplCopyWith<_$MapPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Report _$ReportFromJson(Map<String, dynamic> json) {
  return _Report.fromJson(json);
}

/// @nodoc
mixin _$Report {
  String get id => throw _privateConstructorUsedError;
  String get animalType => throw _privateConstructorUsedError;
  OriginDetermination get originDetermination =>
      throw _privateConstructorUsedError;
  DiagnosticQuestions get diagnosticQuestions =>
      throw _privateConstructorUsedError;
  ContactInformation get contactInformation =>
      throw _privateConstructorUsedError;
  List<ImageInfo> get images => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get governorate => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportCopyWith<Report> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCopyWith<$Res> {
  factory $ReportCopyWith(Report value, $Res Function(Report) then) =
      _$ReportCopyWithImpl<$Res, Report>;
  @useResult
  $Res call(
      {String id,
      String animalType,
      OriginDetermination originDetermination,
      DiagnosticQuestions diagnosticQuestions,
      ContactInformation contactInformation,
      List<ImageInfo> images,
      String? notes,
      String status,
      String? governorate,
      String? createdAt,
      String? updatedAt});

  $OriginDeterminationCopyWith<$Res> get originDetermination;
  $DiagnosticQuestionsCopyWith<$Res> get diagnosticQuestions;
  $ContactInformationCopyWith<$Res> get contactInformation;
}

/// @nodoc
class _$ReportCopyWithImpl<$Res, $Val extends Report>
    implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? animalType = null,
    Object? originDetermination = null,
    Object? diagnosticQuestions = null,
    Object? contactInformation = null,
    Object? images = null,
    Object? notes = freezed,
    Object? status = null,
    Object? governorate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      animalType: null == animalType
          ? _value.animalType
          : animalType // ignore: cast_nullable_to_non_nullable
              as String,
      originDetermination: null == originDetermination
          ? _value.originDetermination
          : originDetermination // ignore: cast_nullable_to_non_nullable
              as OriginDetermination,
      diagnosticQuestions: null == diagnosticQuestions
          ? _value.diagnosticQuestions
          : diagnosticQuestions // ignore: cast_nullable_to_non_nullable
              as DiagnosticQuestions,
      contactInformation: null == contactInformation
          ? _value.contactInformation
          : contactInformation // ignore: cast_nullable_to_non_nullable
              as ContactInformation,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageInfo>,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      governorate: freezed == governorate
          ? _value.governorate
          : governorate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OriginDeterminationCopyWith<$Res> get originDetermination {
    return $OriginDeterminationCopyWith<$Res>(_value.originDetermination,
        (value) {
      return _then(_value.copyWith(originDetermination: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DiagnosticQuestionsCopyWith<$Res> get diagnosticQuestions {
    return $DiagnosticQuestionsCopyWith<$Res>(_value.diagnosticQuestions,
        (value) {
      return _then(_value.copyWith(diagnosticQuestions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactInformationCopyWith<$Res> get contactInformation {
    return $ContactInformationCopyWith<$Res>(_value.contactInformation,
        (value) {
      return _then(_value.copyWith(contactInformation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReportImplCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$$ReportImplCopyWith(
          _$ReportImpl value, $Res Function(_$ReportImpl) then) =
      __$$ReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String animalType,
      OriginDetermination originDetermination,
      DiagnosticQuestions diagnosticQuestions,
      ContactInformation contactInformation,
      List<ImageInfo> images,
      String? notes,
      String status,
      String? governorate,
      String? createdAt,
      String? updatedAt});

  @override
  $OriginDeterminationCopyWith<$Res> get originDetermination;
  @override
  $DiagnosticQuestionsCopyWith<$Res> get diagnosticQuestions;
  @override
  $ContactInformationCopyWith<$Res> get contactInformation;
}

/// @nodoc
class __$$ReportImplCopyWithImpl<$Res>
    extends _$ReportCopyWithImpl<$Res, _$ReportImpl>
    implements _$$ReportImplCopyWith<$Res> {
  __$$ReportImplCopyWithImpl(
      _$ReportImpl _value, $Res Function(_$ReportImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? animalType = null,
    Object? originDetermination = null,
    Object? diagnosticQuestions = null,
    Object? contactInformation = null,
    Object? images = null,
    Object? notes = freezed,
    Object? status = null,
    Object? governorate = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ReportImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      animalType: null == animalType
          ? _value.animalType
          : animalType // ignore: cast_nullable_to_non_nullable
              as String,
      originDetermination: null == originDetermination
          ? _value.originDetermination
          : originDetermination // ignore: cast_nullable_to_non_nullable
              as OriginDetermination,
      diagnosticQuestions: null == diagnosticQuestions
          ? _value.diagnosticQuestions
          : diagnosticQuestions // ignore: cast_nullable_to_non_nullable
              as DiagnosticQuestions,
      contactInformation: null == contactInformation
          ? _value.contactInformation
          : contactInformation // ignore: cast_nullable_to_non_nullable
              as ContactInformation,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageInfo>,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      governorate: freezed == governorate
          ? _value.governorate
          : governorate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportImpl implements _Report {
  const _$ReportImpl(
      {required this.id,
      required this.animalType,
      required this.originDetermination,
      required this.diagnosticQuestions,
      required this.contactInformation,
      required final List<ImageInfo> images,
      this.notes,
      required this.status,
      this.governorate,
      this.createdAt,
      this.updatedAt})
      : _images = images;

  factory _$ReportImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportImplFromJson(json);

  @override
  final String id;
  @override
  final String animalType;
  @override
  final OriginDetermination originDetermination;
  @override
  final DiagnosticQuestions diagnosticQuestions;
  @override
  final ContactInformation contactInformation;
  final List<ImageInfo> _images;
  @override
  List<ImageInfo> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String? notes;
  @override
  final String status;
  @override
  final String? governorate;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Report(id: $id, animalType: $animalType, originDetermination: $originDetermination, diagnosticQuestions: $diagnosticQuestions, contactInformation: $contactInformation, images: $images, notes: $notes, status: $status, governorate: $governorate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.animalType, animalType) ||
                other.animalType == animalType) &&
            (identical(other.originDetermination, originDetermination) ||
                other.originDetermination == originDetermination) &&
            (identical(other.diagnosticQuestions, diagnosticQuestions) ||
                other.diagnosticQuestions == diagnosticQuestions) &&
            (identical(other.contactInformation, contactInformation) ||
                other.contactInformation == contactInformation) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.governorate, governorate) ||
                other.governorate == governorate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      animalType,
      originDetermination,
      diagnosticQuestions,
      contactInformation,
      const DeepCollectionEquality().hash(_images),
      notes,
      status,
      governorate,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportImplCopyWith<_$ReportImpl> get copyWith =>
      __$$ReportImplCopyWithImpl<_$ReportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportImplToJson(
      this,
    );
  }
}

abstract class _Report implements Report {
  const factory _Report(
      {required final String id,
      required final String animalType,
      required final OriginDetermination originDetermination,
      required final DiagnosticQuestions diagnosticQuestions,
      required final ContactInformation contactInformation,
      required final List<ImageInfo> images,
      final String? notes,
      required final String status,
      final String? governorate,
      final String? createdAt,
      final String? updatedAt}) = _$ReportImpl;

  factory _Report.fromJson(Map<String, dynamic> json) = _$ReportImpl.fromJson;

  @override
  String get id;
  @override
  String get animalType;
  @override
  OriginDetermination get originDetermination;
  @override
  DiagnosticQuestions get diagnosticQuestions;
  @override
  ContactInformation get contactInformation;
  @override
  List<ImageInfo> get images;
  @override
  String? get notes;
  @override
  String get status;
  @override
  String? get governorate;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ReportImplCopyWith<_$ReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OriginDetermination _$OriginDeterminationFromJson(Map<String, dynamic> json) {
  return _OriginDetermination.fromJson(json);
}

/// @nodoc
mixin _$OriginDetermination {
  @JsonKey(defaultValue: [])
  List<String> get insectRelatedIssues => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<String> get bacterialIssues => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<String> get viralIssues => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<String> get infectionsAndParasites => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<String> get newIssues => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<String> get respiratoryIssues => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<String> get traumasAndInheritance => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<String> get notDetermined => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OriginDeterminationCopyWith<OriginDetermination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OriginDeterminationCopyWith<$Res> {
  factory $OriginDeterminationCopyWith(
          OriginDetermination value, $Res Function(OriginDetermination) then) =
      _$OriginDeterminationCopyWithImpl<$Res, OriginDetermination>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: []) List<String> insectRelatedIssues,
      @JsonKey(defaultValue: []) List<String> bacterialIssues,
      @JsonKey(defaultValue: []) List<String> viralIssues,
      @JsonKey(defaultValue: []) List<String> infectionsAndParasites,
      @JsonKey(defaultValue: []) List<String> newIssues,
      @JsonKey(defaultValue: []) List<String> respiratoryIssues,
      @JsonKey(defaultValue: []) List<String> traumasAndInheritance,
      @JsonKey(defaultValue: []) List<String> notDetermined});
}

/// @nodoc
class _$OriginDeterminationCopyWithImpl<$Res, $Val extends OriginDetermination>
    implements $OriginDeterminationCopyWith<$Res> {
  _$OriginDeterminationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insectRelatedIssues = null,
    Object? bacterialIssues = null,
    Object? viralIssues = null,
    Object? infectionsAndParasites = null,
    Object? newIssues = null,
    Object? respiratoryIssues = null,
    Object? traumasAndInheritance = null,
    Object? notDetermined = null,
  }) {
    return _then(_value.copyWith(
      insectRelatedIssues: null == insectRelatedIssues
          ? _value.insectRelatedIssues
          : insectRelatedIssues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bacterialIssues: null == bacterialIssues
          ? _value.bacterialIssues
          : bacterialIssues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      viralIssues: null == viralIssues
          ? _value.viralIssues
          : viralIssues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      infectionsAndParasites: null == infectionsAndParasites
          ? _value.infectionsAndParasites
          : infectionsAndParasites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      newIssues: null == newIssues
          ? _value.newIssues
          : newIssues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      respiratoryIssues: null == respiratoryIssues
          ? _value.respiratoryIssues
          : respiratoryIssues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      traumasAndInheritance: null == traumasAndInheritance
          ? _value.traumasAndInheritance
          : traumasAndInheritance // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notDetermined: null == notDetermined
          ? _value.notDetermined
          : notDetermined // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OriginDeterminationImplCopyWith<$Res>
    implements $OriginDeterminationCopyWith<$Res> {
  factory _$$OriginDeterminationImplCopyWith(_$OriginDeterminationImpl value,
          $Res Function(_$OriginDeterminationImpl) then) =
      __$$OriginDeterminationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: []) List<String> insectRelatedIssues,
      @JsonKey(defaultValue: []) List<String> bacterialIssues,
      @JsonKey(defaultValue: []) List<String> viralIssues,
      @JsonKey(defaultValue: []) List<String> infectionsAndParasites,
      @JsonKey(defaultValue: []) List<String> newIssues,
      @JsonKey(defaultValue: []) List<String> respiratoryIssues,
      @JsonKey(defaultValue: []) List<String> traumasAndInheritance,
      @JsonKey(defaultValue: []) List<String> notDetermined});
}

/// @nodoc
class __$$OriginDeterminationImplCopyWithImpl<$Res>
    extends _$OriginDeterminationCopyWithImpl<$Res, _$OriginDeterminationImpl>
    implements _$$OriginDeterminationImplCopyWith<$Res> {
  __$$OriginDeterminationImplCopyWithImpl(_$OriginDeterminationImpl _value,
      $Res Function(_$OriginDeterminationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insectRelatedIssues = null,
    Object? bacterialIssues = null,
    Object? viralIssues = null,
    Object? infectionsAndParasites = null,
    Object? newIssues = null,
    Object? respiratoryIssues = null,
    Object? traumasAndInheritance = null,
    Object? notDetermined = null,
  }) {
    return _then(_$OriginDeterminationImpl(
      insectRelatedIssues: null == insectRelatedIssues
          ? _value._insectRelatedIssues
          : insectRelatedIssues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bacterialIssues: null == bacterialIssues
          ? _value._bacterialIssues
          : bacterialIssues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      viralIssues: null == viralIssues
          ? _value._viralIssues
          : viralIssues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      infectionsAndParasites: null == infectionsAndParasites
          ? _value._infectionsAndParasites
          : infectionsAndParasites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      newIssues: null == newIssues
          ? _value._newIssues
          : newIssues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      respiratoryIssues: null == respiratoryIssues
          ? _value._respiratoryIssues
          : respiratoryIssues // ignore: cast_nullable_to_non_nullable
              as List<String>,
      traumasAndInheritance: null == traumasAndInheritance
          ? _value._traumasAndInheritance
          : traumasAndInheritance // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notDetermined: null == notDetermined
          ? _value._notDetermined
          : notDetermined // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OriginDeterminationImpl implements _OriginDetermination {
  const _$OriginDeterminationImpl(
      {@JsonKey(defaultValue: [])
      final List<String> insectRelatedIssues = const [],
      @JsonKey(defaultValue: []) final List<String> bacterialIssues = const [],
      @JsonKey(defaultValue: []) final List<String> viralIssues = const [],
      @JsonKey(defaultValue: [])
      final List<String> infectionsAndParasites = const [],
      @JsonKey(defaultValue: []) final List<String> newIssues = const [],
      @JsonKey(defaultValue: [])
      final List<String> respiratoryIssues = const [],
      @JsonKey(defaultValue: [])
      final List<String> traumasAndInheritance = const [],
      @JsonKey(defaultValue: []) final List<String> notDetermined = const []})
      : _insectRelatedIssues = insectRelatedIssues,
        _bacterialIssues = bacterialIssues,
        _viralIssues = viralIssues,
        _infectionsAndParasites = infectionsAndParasites,
        _newIssues = newIssues,
        _respiratoryIssues = respiratoryIssues,
        _traumasAndInheritance = traumasAndInheritance,
        _notDetermined = notDetermined;

  factory _$OriginDeterminationImpl.fromJson(Map<String, dynamic> json) =>
      _$$OriginDeterminationImplFromJson(json);

  final List<String> _insectRelatedIssues;
  @override
  @JsonKey(defaultValue: [])
  List<String> get insectRelatedIssues {
    if (_insectRelatedIssues is EqualUnmodifiableListView)
      return _insectRelatedIssues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_insectRelatedIssues);
  }

  final List<String> _bacterialIssues;
  @override
  @JsonKey(defaultValue: [])
  List<String> get bacterialIssues {
    if (_bacterialIssues is EqualUnmodifiableListView) return _bacterialIssues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bacterialIssues);
  }

  final List<String> _viralIssues;
  @override
  @JsonKey(defaultValue: [])
  List<String> get viralIssues {
    if (_viralIssues is EqualUnmodifiableListView) return _viralIssues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_viralIssues);
  }

  final List<String> _infectionsAndParasites;
  @override
  @JsonKey(defaultValue: [])
  List<String> get infectionsAndParasites {
    if (_infectionsAndParasites is EqualUnmodifiableListView)
      return _infectionsAndParasites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_infectionsAndParasites);
  }

  final List<String> _newIssues;
  @override
  @JsonKey(defaultValue: [])
  List<String> get newIssues {
    if (_newIssues is EqualUnmodifiableListView) return _newIssues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newIssues);
  }

  final List<String> _respiratoryIssues;
  @override
  @JsonKey(defaultValue: [])
  List<String> get respiratoryIssues {
    if (_respiratoryIssues is EqualUnmodifiableListView)
      return _respiratoryIssues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_respiratoryIssues);
  }

  final List<String> _traumasAndInheritance;
  @override
  @JsonKey(defaultValue: [])
  List<String> get traumasAndInheritance {
    if (_traumasAndInheritance is EqualUnmodifiableListView)
      return _traumasAndInheritance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_traumasAndInheritance);
  }

  final List<String> _notDetermined;
  @override
  @JsonKey(defaultValue: [])
  List<String> get notDetermined {
    if (_notDetermined is EqualUnmodifiableListView) return _notDetermined;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notDetermined);
  }

  @override
  String toString() {
    return 'OriginDetermination(insectRelatedIssues: $insectRelatedIssues, bacterialIssues: $bacterialIssues, viralIssues: $viralIssues, infectionsAndParasites: $infectionsAndParasites, newIssues: $newIssues, respiratoryIssues: $respiratoryIssues, traumasAndInheritance: $traumasAndInheritance, notDetermined: $notDetermined)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OriginDeterminationImpl &&
            const DeepCollectionEquality()
                .equals(other._insectRelatedIssues, _insectRelatedIssues) &&
            const DeepCollectionEquality()
                .equals(other._bacterialIssues, _bacterialIssues) &&
            const DeepCollectionEquality()
                .equals(other._viralIssues, _viralIssues) &&
            const DeepCollectionEquality().equals(
                other._infectionsAndParasites, _infectionsAndParasites) &&
            const DeepCollectionEquality()
                .equals(other._newIssues, _newIssues) &&
            const DeepCollectionEquality()
                .equals(other._respiratoryIssues, _respiratoryIssues) &&
            const DeepCollectionEquality()
                .equals(other._traumasAndInheritance, _traumasAndInheritance) &&
            const DeepCollectionEquality()
                .equals(other._notDetermined, _notDetermined));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_insectRelatedIssues),
      const DeepCollectionEquality().hash(_bacterialIssues),
      const DeepCollectionEquality().hash(_viralIssues),
      const DeepCollectionEquality().hash(_infectionsAndParasites),
      const DeepCollectionEquality().hash(_newIssues),
      const DeepCollectionEquality().hash(_respiratoryIssues),
      const DeepCollectionEquality().hash(_traumasAndInheritance),
      const DeepCollectionEquality().hash(_notDetermined));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OriginDeterminationImplCopyWith<_$OriginDeterminationImpl> get copyWith =>
      __$$OriginDeterminationImplCopyWithImpl<_$OriginDeterminationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OriginDeterminationImplToJson(
      this,
    );
  }
}

abstract class _OriginDetermination implements OriginDetermination {
  const factory _OriginDetermination(
          {@JsonKey(defaultValue: []) final List<String> insectRelatedIssues,
          @JsonKey(defaultValue: []) final List<String> bacterialIssues,
          @JsonKey(defaultValue: []) final List<String> viralIssues,
          @JsonKey(defaultValue: []) final List<String> infectionsAndParasites,
          @JsonKey(defaultValue: []) final List<String> newIssues,
          @JsonKey(defaultValue: []) final List<String> respiratoryIssues,
          @JsonKey(defaultValue: []) final List<String> traumasAndInheritance,
          @JsonKey(defaultValue: []) final List<String> notDetermined}) =
      _$OriginDeterminationImpl;

  factory _OriginDetermination.fromJson(Map<String, dynamic> json) =
      _$OriginDeterminationImpl.fromJson;

  @override
  @JsonKey(defaultValue: [])
  List<String> get insectRelatedIssues;
  @override
  @JsonKey(defaultValue: [])
  List<String> get bacterialIssues;
  @override
  @JsonKey(defaultValue: [])
  List<String> get viralIssues;
  @override
  @JsonKey(defaultValue: [])
  List<String> get infectionsAndParasites;
  @override
  @JsonKey(defaultValue: [])
  List<String> get newIssues;
  @override
  @JsonKey(defaultValue: [])
  List<String> get respiratoryIssues;
  @override
  @JsonKey(defaultValue: [])
  List<String> get traumasAndInheritance;
  @override
  @JsonKey(defaultValue: [])
  List<String> get notDetermined;
  @override
  @JsonKey(ignore: true)
  _$$OriginDeterminationImplCopyWith<_$OriginDeterminationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DiagnosticQuestions _$DiagnosticQuestionsFromJson(Map<String, dynamic> json) {
  return _DiagnosticQuestions.fromJson(json);
}

/// @nodoc
mixin _$DiagnosticQuestions {
  String get naturalBehavior => throw _privateConstructorUsedError;
  String get drinksWater => throw _privateConstructorUsedError;
  String get movesNormally => throw _privateConstructorUsedError;
  String get breathingNormally => throw _privateConstructorUsedError;
  String get regularExcretion => throw _privateConstructorUsedError;
  String get hairLossOrSkinIssues => throw _privateConstructorUsedError;
  String get previousSimilarSymptoms => throw _privateConstructorUsedError;
  String get vaccinationsUpToDate => throw _privateConstructorUsedError;
  String get recentBehaviorChange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiagnosticQuestionsCopyWith<DiagnosticQuestions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiagnosticQuestionsCopyWith<$Res> {
  factory $DiagnosticQuestionsCopyWith(
          DiagnosticQuestions value, $Res Function(DiagnosticQuestions) then) =
      _$DiagnosticQuestionsCopyWithImpl<$Res, DiagnosticQuestions>;
  @useResult
  $Res call(
      {String naturalBehavior,
      String drinksWater,
      String movesNormally,
      String breathingNormally,
      String regularExcretion,
      String hairLossOrSkinIssues,
      String previousSimilarSymptoms,
      String vaccinationsUpToDate,
      String recentBehaviorChange});
}

/// @nodoc
class _$DiagnosticQuestionsCopyWithImpl<$Res, $Val extends DiagnosticQuestions>
    implements $DiagnosticQuestionsCopyWith<$Res> {
  _$DiagnosticQuestionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? naturalBehavior = null,
    Object? drinksWater = null,
    Object? movesNormally = null,
    Object? breathingNormally = null,
    Object? regularExcretion = null,
    Object? hairLossOrSkinIssues = null,
    Object? previousSimilarSymptoms = null,
    Object? vaccinationsUpToDate = null,
    Object? recentBehaviorChange = null,
  }) {
    return _then(_value.copyWith(
      naturalBehavior: null == naturalBehavior
          ? _value.naturalBehavior
          : naturalBehavior // ignore: cast_nullable_to_non_nullable
              as String,
      drinksWater: null == drinksWater
          ? _value.drinksWater
          : drinksWater // ignore: cast_nullable_to_non_nullable
              as String,
      movesNormally: null == movesNormally
          ? _value.movesNormally
          : movesNormally // ignore: cast_nullable_to_non_nullable
              as String,
      breathingNormally: null == breathingNormally
          ? _value.breathingNormally
          : breathingNormally // ignore: cast_nullable_to_non_nullable
              as String,
      regularExcretion: null == regularExcretion
          ? _value.regularExcretion
          : regularExcretion // ignore: cast_nullable_to_non_nullable
              as String,
      hairLossOrSkinIssues: null == hairLossOrSkinIssues
          ? _value.hairLossOrSkinIssues
          : hairLossOrSkinIssues // ignore: cast_nullable_to_non_nullable
              as String,
      previousSimilarSymptoms: null == previousSimilarSymptoms
          ? _value.previousSimilarSymptoms
          : previousSimilarSymptoms // ignore: cast_nullable_to_non_nullable
              as String,
      vaccinationsUpToDate: null == vaccinationsUpToDate
          ? _value.vaccinationsUpToDate
          : vaccinationsUpToDate // ignore: cast_nullable_to_non_nullable
              as String,
      recentBehaviorChange: null == recentBehaviorChange
          ? _value.recentBehaviorChange
          : recentBehaviorChange // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiagnosticQuestionsImplCopyWith<$Res>
    implements $DiagnosticQuestionsCopyWith<$Res> {
  factory _$$DiagnosticQuestionsImplCopyWith(_$DiagnosticQuestionsImpl value,
          $Res Function(_$DiagnosticQuestionsImpl) then) =
      __$$DiagnosticQuestionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String naturalBehavior,
      String drinksWater,
      String movesNormally,
      String breathingNormally,
      String regularExcretion,
      String hairLossOrSkinIssues,
      String previousSimilarSymptoms,
      String vaccinationsUpToDate,
      String recentBehaviorChange});
}

/// @nodoc
class __$$DiagnosticQuestionsImplCopyWithImpl<$Res>
    extends _$DiagnosticQuestionsCopyWithImpl<$Res, _$DiagnosticQuestionsImpl>
    implements _$$DiagnosticQuestionsImplCopyWith<$Res> {
  __$$DiagnosticQuestionsImplCopyWithImpl(_$DiagnosticQuestionsImpl _value,
      $Res Function(_$DiagnosticQuestionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? naturalBehavior = null,
    Object? drinksWater = null,
    Object? movesNormally = null,
    Object? breathingNormally = null,
    Object? regularExcretion = null,
    Object? hairLossOrSkinIssues = null,
    Object? previousSimilarSymptoms = null,
    Object? vaccinationsUpToDate = null,
    Object? recentBehaviorChange = null,
  }) {
    return _then(_$DiagnosticQuestionsImpl(
      naturalBehavior: null == naturalBehavior
          ? _value.naturalBehavior
          : naturalBehavior // ignore: cast_nullable_to_non_nullable
              as String,
      drinksWater: null == drinksWater
          ? _value.drinksWater
          : drinksWater // ignore: cast_nullable_to_non_nullable
              as String,
      movesNormally: null == movesNormally
          ? _value.movesNormally
          : movesNormally // ignore: cast_nullable_to_non_nullable
              as String,
      breathingNormally: null == breathingNormally
          ? _value.breathingNormally
          : breathingNormally // ignore: cast_nullable_to_non_nullable
              as String,
      regularExcretion: null == regularExcretion
          ? _value.regularExcretion
          : regularExcretion // ignore: cast_nullable_to_non_nullable
              as String,
      hairLossOrSkinIssues: null == hairLossOrSkinIssues
          ? _value.hairLossOrSkinIssues
          : hairLossOrSkinIssues // ignore: cast_nullable_to_non_nullable
              as String,
      previousSimilarSymptoms: null == previousSimilarSymptoms
          ? _value.previousSimilarSymptoms
          : previousSimilarSymptoms // ignore: cast_nullable_to_non_nullable
              as String,
      vaccinationsUpToDate: null == vaccinationsUpToDate
          ? _value.vaccinationsUpToDate
          : vaccinationsUpToDate // ignore: cast_nullable_to_non_nullable
              as String,
      recentBehaviorChange: null == recentBehaviorChange
          ? _value.recentBehaviorChange
          : recentBehaviorChange // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiagnosticQuestionsImpl implements _DiagnosticQuestions {
  const _$DiagnosticQuestionsImpl(
      {required this.naturalBehavior,
      required this.drinksWater,
      required this.movesNormally,
      required this.breathingNormally,
      required this.regularExcretion,
      required this.hairLossOrSkinIssues,
      required this.previousSimilarSymptoms,
      required this.vaccinationsUpToDate,
      required this.recentBehaviorChange});

  factory _$DiagnosticQuestionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiagnosticQuestionsImplFromJson(json);

  @override
  final String naturalBehavior;
  @override
  final String drinksWater;
  @override
  final String movesNormally;
  @override
  final String breathingNormally;
  @override
  final String regularExcretion;
  @override
  final String hairLossOrSkinIssues;
  @override
  final String previousSimilarSymptoms;
  @override
  final String vaccinationsUpToDate;
  @override
  final String recentBehaviorChange;

  @override
  String toString() {
    return 'DiagnosticQuestions(naturalBehavior: $naturalBehavior, drinksWater: $drinksWater, movesNormally: $movesNormally, breathingNormally: $breathingNormally, regularExcretion: $regularExcretion, hairLossOrSkinIssues: $hairLossOrSkinIssues, previousSimilarSymptoms: $previousSimilarSymptoms, vaccinationsUpToDate: $vaccinationsUpToDate, recentBehaviorChange: $recentBehaviorChange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiagnosticQuestionsImpl &&
            (identical(other.naturalBehavior, naturalBehavior) ||
                other.naturalBehavior == naturalBehavior) &&
            (identical(other.drinksWater, drinksWater) ||
                other.drinksWater == drinksWater) &&
            (identical(other.movesNormally, movesNormally) ||
                other.movesNormally == movesNormally) &&
            (identical(other.breathingNormally, breathingNormally) ||
                other.breathingNormally == breathingNormally) &&
            (identical(other.regularExcretion, regularExcretion) ||
                other.regularExcretion == regularExcretion) &&
            (identical(other.hairLossOrSkinIssues, hairLossOrSkinIssues) ||
                other.hairLossOrSkinIssues == hairLossOrSkinIssues) &&
            (identical(
                    other.previousSimilarSymptoms, previousSimilarSymptoms) ||
                other.previousSimilarSymptoms == previousSimilarSymptoms) &&
            (identical(other.vaccinationsUpToDate, vaccinationsUpToDate) ||
                other.vaccinationsUpToDate == vaccinationsUpToDate) &&
            (identical(other.recentBehaviorChange, recentBehaviorChange) ||
                other.recentBehaviorChange == recentBehaviorChange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      naturalBehavior,
      drinksWater,
      movesNormally,
      breathingNormally,
      regularExcretion,
      hairLossOrSkinIssues,
      previousSimilarSymptoms,
      vaccinationsUpToDate,
      recentBehaviorChange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiagnosticQuestionsImplCopyWith<_$DiagnosticQuestionsImpl> get copyWith =>
      __$$DiagnosticQuestionsImplCopyWithImpl<_$DiagnosticQuestionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiagnosticQuestionsImplToJson(
      this,
    );
  }
}

abstract class _DiagnosticQuestions implements DiagnosticQuestions {
  const factory _DiagnosticQuestions(
      {required final String naturalBehavior,
      required final String drinksWater,
      required final String movesNormally,
      required final String breathingNormally,
      required final String regularExcretion,
      required final String hairLossOrSkinIssues,
      required final String previousSimilarSymptoms,
      required final String vaccinationsUpToDate,
      required final String recentBehaviorChange}) = _$DiagnosticQuestionsImpl;

  factory _DiagnosticQuestions.fromJson(Map<String, dynamic> json) =
      _$DiagnosticQuestionsImpl.fromJson;

  @override
  String get naturalBehavior;
  @override
  String get drinksWater;
  @override
  String get movesNormally;
  @override
  String get breathingNormally;
  @override
  String get regularExcretion;
  @override
  String get hairLossOrSkinIssues;
  @override
  String get previousSimilarSymptoms;
  @override
  String get vaccinationsUpToDate;
  @override
  String get recentBehaviorChange;
  @override
  @JsonKey(ignore: true)
  _$$DiagnosticQuestionsImplCopyWith<_$DiagnosticQuestionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContactInformation _$ContactInformationFromJson(Map<String, dynamic> json) {
  return _ContactInformation.fromJson(json);
}

/// @nodoc
mixin _$ContactInformation {
  CaseLocation get caseLocation => throw _privateConstructorUsedError;
  String get responsiblePersonName => throw _privateConstructorUsedError;
  String get responsiblePersonPhone => throw _privateConstructorUsedError;
  String get caseAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactInformationCopyWith<ContactInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactInformationCopyWith<$Res> {
  factory $ContactInformationCopyWith(
          ContactInformation value, $Res Function(ContactInformation) then) =
      _$ContactInformationCopyWithImpl<$Res, ContactInformation>;
  @useResult
  $Res call(
      {CaseLocation caseLocation,
      String responsiblePersonName,
      String responsiblePersonPhone,
      String caseAddress});

  $CaseLocationCopyWith<$Res> get caseLocation;
}

/// @nodoc
class _$ContactInformationCopyWithImpl<$Res, $Val extends ContactInformation>
    implements $ContactInformationCopyWith<$Res> {
  _$ContactInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caseLocation = null,
    Object? responsiblePersonName = null,
    Object? responsiblePersonPhone = null,
    Object? caseAddress = null,
  }) {
    return _then(_value.copyWith(
      caseLocation: null == caseLocation
          ? _value.caseLocation
          : caseLocation // ignore: cast_nullable_to_non_nullable
              as CaseLocation,
      responsiblePersonName: null == responsiblePersonName
          ? _value.responsiblePersonName
          : responsiblePersonName // ignore: cast_nullable_to_non_nullable
              as String,
      responsiblePersonPhone: null == responsiblePersonPhone
          ? _value.responsiblePersonPhone
          : responsiblePersonPhone // ignore: cast_nullable_to_non_nullable
              as String,
      caseAddress: null == caseAddress
          ? _value.caseAddress
          : caseAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CaseLocationCopyWith<$Res> get caseLocation {
    return $CaseLocationCopyWith<$Res>(_value.caseLocation, (value) {
      return _then(_value.copyWith(caseLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContactInformationImplCopyWith<$Res>
    implements $ContactInformationCopyWith<$Res> {
  factory _$$ContactInformationImplCopyWith(_$ContactInformationImpl value,
          $Res Function(_$ContactInformationImpl) then) =
      __$$ContactInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CaseLocation caseLocation,
      String responsiblePersonName,
      String responsiblePersonPhone,
      String caseAddress});

  @override
  $CaseLocationCopyWith<$Res> get caseLocation;
}

/// @nodoc
class __$$ContactInformationImplCopyWithImpl<$Res>
    extends _$ContactInformationCopyWithImpl<$Res, _$ContactInformationImpl>
    implements _$$ContactInformationImplCopyWith<$Res> {
  __$$ContactInformationImplCopyWithImpl(_$ContactInformationImpl _value,
      $Res Function(_$ContactInformationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? caseLocation = null,
    Object? responsiblePersonName = null,
    Object? responsiblePersonPhone = null,
    Object? caseAddress = null,
  }) {
    return _then(_$ContactInformationImpl(
      caseLocation: null == caseLocation
          ? _value.caseLocation
          : caseLocation // ignore: cast_nullable_to_non_nullable
              as CaseLocation,
      responsiblePersonName: null == responsiblePersonName
          ? _value.responsiblePersonName
          : responsiblePersonName // ignore: cast_nullable_to_non_nullable
              as String,
      responsiblePersonPhone: null == responsiblePersonPhone
          ? _value.responsiblePersonPhone
          : responsiblePersonPhone // ignore: cast_nullable_to_non_nullable
              as String,
      caseAddress: null == caseAddress
          ? _value.caseAddress
          : caseAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactInformationImpl implements _ContactInformation {
  const _$ContactInformationImpl(
      {required this.caseLocation,
      required this.responsiblePersonName,
      required this.responsiblePersonPhone,
      required this.caseAddress});

  factory _$ContactInformationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactInformationImplFromJson(json);

  @override
  final CaseLocation caseLocation;
  @override
  final String responsiblePersonName;
  @override
  final String responsiblePersonPhone;
  @override
  final String caseAddress;

  @override
  String toString() {
    return 'ContactInformation(caseLocation: $caseLocation, responsiblePersonName: $responsiblePersonName, responsiblePersonPhone: $responsiblePersonPhone, caseAddress: $caseAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactInformationImpl &&
            (identical(other.caseLocation, caseLocation) ||
                other.caseLocation == caseLocation) &&
            (identical(other.responsiblePersonName, responsiblePersonName) ||
                other.responsiblePersonName == responsiblePersonName) &&
            (identical(other.responsiblePersonPhone, responsiblePersonPhone) ||
                other.responsiblePersonPhone == responsiblePersonPhone) &&
            (identical(other.caseAddress, caseAddress) ||
                other.caseAddress == caseAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, caseLocation,
      responsiblePersonName, responsiblePersonPhone, caseAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactInformationImplCopyWith<_$ContactInformationImpl> get copyWith =>
      __$$ContactInformationImplCopyWithImpl<_$ContactInformationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactInformationImplToJson(
      this,
    );
  }
}

abstract class _ContactInformation implements ContactInformation {
  const factory _ContactInformation(
      {required final CaseLocation caseLocation,
      required final String responsiblePersonName,
      required final String responsiblePersonPhone,
      required final String caseAddress}) = _$ContactInformationImpl;

  factory _ContactInformation.fromJson(Map<String, dynamic> json) =
      _$ContactInformationImpl.fromJson;

  @override
  CaseLocation get caseLocation;
  @override
  String get responsiblePersonName;
  @override
  String get responsiblePersonPhone;
  @override
  String get caseAddress;
  @override
  @JsonKey(ignore: true)
  _$$ContactInformationImplCopyWith<_$ContactInformationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CaseLocation _$CaseLocationFromJson(Map<String, dynamic> json) {
  return _CaseLocation.fromJson(json);
}

/// @nodoc
mixin _$CaseLocation {
  String get type => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaseLocationCopyWith<CaseLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaseLocationCopyWith<$Res> {
  factory $CaseLocationCopyWith(
          CaseLocation value, $Res Function(CaseLocation) then) =
      _$CaseLocationCopyWithImpl<$Res, CaseLocation>;
  @useResult
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class _$CaseLocationCopyWithImpl<$Res, $Val extends CaseLocation>
    implements $CaseLocationCopyWith<$Res> {
  _$CaseLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CaseLocationImplCopyWith<$Res>
    implements $CaseLocationCopyWith<$Res> {
  factory _$$CaseLocationImplCopyWith(
          _$CaseLocationImpl value, $Res Function(_$CaseLocationImpl) then) =
      __$$CaseLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, List<double> coordinates});
}

/// @nodoc
class __$$CaseLocationImplCopyWithImpl<$Res>
    extends _$CaseLocationCopyWithImpl<$Res, _$CaseLocationImpl>
    implements _$$CaseLocationImplCopyWith<$Res> {
  __$$CaseLocationImplCopyWithImpl(
      _$CaseLocationImpl _value, $Res Function(_$CaseLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_$CaseLocationImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CaseLocationImpl implements _CaseLocation {
  const _$CaseLocationImpl(
      {required this.type, required final List<double> coordinates})
      : _coordinates = coordinates;

  factory _$CaseLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaseLocationImplFromJson(json);

  @override
  final String type;
  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'CaseLocation(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaseLocationImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CaseLocationImplCopyWith<_$CaseLocationImpl> get copyWith =>
      __$$CaseLocationImplCopyWithImpl<_$CaseLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaseLocationImplToJson(
      this,
    );
  }
}

abstract class _CaseLocation implements CaseLocation {
  const factory _CaseLocation(
      {required final String type,
      required final List<double> coordinates}) = _$CaseLocationImpl;

  factory _CaseLocation.fromJson(Map<String, dynamic> json) =
      _$CaseLocationImpl.fromJson;

  @override
  String get type;
  @override
  List<double> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$CaseLocationImplCopyWith<_$CaseLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageInfo _$ImageInfoFromJson(Map<String, dynamic> json) {
  return _ImageInfo.fromJson(json);
}

/// @nodoc
mixin _$ImageInfo {
  String get url => throw _privateConstructorUsedError;
  String get publicId => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageInfoCopyWith<ImageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageInfoCopyWith<$Res> {
  factory $ImageInfoCopyWith(ImageInfo value, $Res Function(ImageInfo) then) =
      _$ImageInfoCopyWithImpl<$Res, ImageInfo>;
  @useResult
  $Res call({String url, String publicId, @JsonKey(name: '_id') String id});
}

/// @nodoc
class _$ImageInfoCopyWithImpl<$Res, $Val extends ImageInfo>
    implements $ImageInfoCopyWith<$Res> {
  _$ImageInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? publicId = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      publicId: null == publicId
          ? _value.publicId
          : publicId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageInfoImplCopyWith<$Res>
    implements $ImageInfoCopyWith<$Res> {
  factory _$$ImageInfoImplCopyWith(
          _$ImageInfoImpl value, $Res Function(_$ImageInfoImpl) then) =
      __$$ImageInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String publicId, @JsonKey(name: '_id') String id});
}

/// @nodoc
class __$$ImageInfoImplCopyWithImpl<$Res>
    extends _$ImageInfoCopyWithImpl<$Res, _$ImageInfoImpl>
    implements _$$ImageInfoImplCopyWith<$Res> {
  __$$ImageInfoImplCopyWithImpl(
      _$ImageInfoImpl _value, $Res Function(_$ImageInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? publicId = null,
    Object? id = null,
  }) {
    return _then(_$ImageInfoImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      publicId: null == publicId
          ? _value.publicId
          : publicId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageInfoImpl implements _ImageInfo {
  const _$ImageInfoImpl(
      {required this.url,
      required this.publicId,
      @JsonKey(name: '_id') required this.id});

  factory _$ImageInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageInfoImplFromJson(json);

  @override
  final String url;
  @override
  final String publicId;
  @override
  @JsonKey(name: '_id')
  final String id;

  @override
  String toString() {
    return 'ImageInfo(url: $url, publicId: $publicId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageInfoImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.publicId, publicId) ||
                other.publicId == publicId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, publicId, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageInfoImplCopyWith<_$ImageInfoImpl> get copyWith =>
      __$$ImageInfoImplCopyWithImpl<_$ImageInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageInfoImplToJson(
      this,
    );
  }
}

abstract class _ImageInfo implements ImageInfo {
  const factory _ImageInfo(
      {required final String url,
      required final String publicId,
      @JsonKey(name: '_id') required final String id}) = _$ImageInfoImpl;

  factory _ImageInfo.fromJson(Map<String, dynamic> json) =
      _$ImageInfoImpl.fromJson;

  @override
  String get url;
  @override
  String get publicId;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$ImageInfoImplCopyWith<_$ImageInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseEfficiency _$ResponseEfficiencyFromJson(Map<String, dynamic> json) {
  return _ResponseEfficiency.fromJson(json);
}

/// @nodoc
mixin _$ResponseEfficiency {
  String get avgResolutionTime => throw _privateConstructorUsedError;
  String get resolutionRate => throw _privateConstructorUsedError;
  List<dynamic> get delayedRegions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseEfficiencyCopyWith<ResponseEfficiency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseEfficiencyCopyWith<$Res> {
  factory $ResponseEfficiencyCopyWith(
          ResponseEfficiency value, $Res Function(ResponseEfficiency) then) =
      _$ResponseEfficiencyCopyWithImpl<$Res, ResponseEfficiency>;
  @useResult
  $Res call(
      {String avgResolutionTime,
      String resolutionRate,
      List<dynamic> delayedRegions});
}

/// @nodoc
class _$ResponseEfficiencyCopyWithImpl<$Res, $Val extends ResponseEfficiency>
    implements $ResponseEfficiencyCopyWith<$Res> {
  _$ResponseEfficiencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avgResolutionTime = null,
    Object? resolutionRate = null,
    Object? delayedRegions = null,
  }) {
    return _then(_value.copyWith(
      avgResolutionTime: null == avgResolutionTime
          ? _value.avgResolutionTime
          : avgResolutionTime // ignore: cast_nullable_to_non_nullable
              as String,
      resolutionRate: null == resolutionRate
          ? _value.resolutionRate
          : resolutionRate // ignore: cast_nullable_to_non_nullable
              as String,
      delayedRegions: null == delayedRegions
          ? _value.delayedRegions
          : delayedRegions // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseEfficiencyImplCopyWith<$Res>
    implements $ResponseEfficiencyCopyWith<$Res> {
  factory _$$ResponseEfficiencyImplCopyWith(_$ResponseEfficiencyImpl value,
          $Res Function(_$ResponseEfficiencyImpl) then) =
      __$$ResponseEfficiencyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String avgResolutionTime,
      String resolutionRate,
      List<dynamic> delayedRegions});
}

/// @nodoc
class __$$ResponseEfficiencyImplCopyWithImpl<$Res>
    extends _$ResponseEfficiencyCopyWithImpl<$Res, _$ResponseEfficiencyImpl>
    implements _$$ResponseEfficiencyImplCopyWith<$Res> {
  __$$ResponseEfficiencyImplCopyWithImpl(_$ResponseEfficiencyImpl _value,
      $Res Function(_$ResponseEfficiencyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avgResolutionTime = null,
    Object? resolutionRate = null,
    Object? delayedRegions = null,
  }) {
    return _then(_$ResponseEfficiencyImpl(
      avgResolutionTime: null == avgResolutionTime
          ? _value.avgResolutionTime
          : avgResolutionTime // ignore: cast_nullable_to_non_nullable
              as String,
      resolutionRate: null == resolutionRate
          ? _value.resolutionRate
          : resolutionRate // ignore: cast_nullable_to_non_nullable
              as String,
      delayedRegions: null == delayedRegions
          ? _value._delayedRegions
          : delayedRegions // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseEfficiencyImpl implements _ResponseEfficiency {
  const _$ResponseEfficiencyImpl(
      {required this.avgResolutionTime,
      required this.resolutionRate,
      required final List<dynamic> delayedRegions})
      : _delayedRegions = delayedRegions;

  factory _$ResponseEfficiencyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseEfficiencyImplFromJson(json);

  @override
  final String avgResolutionTime;
  @override
  final String resolutionRate;
  final List<dynamic> _delayedRegions;
  @override
  List<dynamic> get delayedRegions {
    if (_delayedRegions is EqualUnmodifiableListView) return _delayedRegions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_delayedRegions);
  }

  @override
  String toString() {
    return 'ResponseEfficiency(avgResolutionTime: $avgResolutionTime, resolutionRate: $resolutionRate, delayedRegions: $delayedRegions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseEfficiencyImpl &&
            (identical(other.avgResolutionTime, avgResolutionTime) ||
                other.avgResolutionTime == avgResolutionTime) &&
            (identical(other.resolutionRate, resolutionRate) ||
                other.resolutionRate == resolutionRate) &&
            const DeepCollectionEquality()
                .equals(other._delayedRegions, _delayedRegions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, avgResolutionTime,
      resolutionRate, const DeepCollectionEquality().hash(_delayedRegions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseEfficiencyImplCopyWith<_$ResponseEfficiencyImpl> get copyWith =>
      __$$ResponseEfficiencyImplCopyWithImpl<_$ResponseEfficiencyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseEfficiencyImplToJson(
      this,
    );
  }
}

abstract class _ResponseEfficiency implements ResponseEfficiency {
  const factory _ResponseEfficiency(
      {required final String avgResolutionTime,
      required final String resolutionRate,
      required final List<dynamic> delayedRegions}) = _$ResponseEfficiencyImpl;

  factory _ResponseEfficiency.fromJson(Map<String, dynamic> json) =
      _$ResponseEfficiencyImpl.fromJson;

  @override
  String get avgResolutionTime;
  @override
  String get resolutionRate;
  @override
  List<dynamic> get delayedRegions;
  @override
  @JsonKey(ignore: true)
  _$$ResponseEfficiencyImplCopyWith<_$ResponseEfficiencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopDiseaseElement _$TopDiseaseElementFromJson(Map<String, dynamic> json) {
  return _TopDiseaseElement.fromJson(json);
}

/// @nodoc
mixin _$TopDiseaseElement {
  int get count => throw _privateConstructorUsedError;
  TopDiseaseElementDisease get disease => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopDiseaseElementCopyWith<TopDiseaseElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopDiseaseElementCopyWith<$Res> {
  factory $TopDiseaseElementCopyWith(
          TopDiseaseElement value, $Res Function(TopDiseaseElement) then) =
      _$TopDiseaseElementCopyWithImpl<$Res, TopDiseaseElement>;
  @useResult
  $Res call({int count, TopDiseaseElementDisease disease});

  $TopDiseaseElementDiseaseCopyWith<$Res> get disease;
}

/// @nodoc
class _$TopDiseaseElementCopyWithImpl<$Res, $Val extends TopDiseaseElement>
    implements $TopDiseaseElementCopyWith<$Res> {
  _$TopDiseaseElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? disease = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      disease: null == disease
          ? _value.disease
          : disease // ignore: cast_nullable_to_non_nullable
              as TopDiseaseElementDisease,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TopDiseaseElementDiseaseCopyWith<$Res> get disease {
    return $TopDiseaseElementDiseaseCopyWith<$Res>(_value.disease, (value) {
      return _then(_value.copyWith(disease: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopDiseaseElementImplCopyWith<$Res>
    implements $TopDiseaseElementCopyWith<$Res> {
  factory _$$TopDiseaseElementImplCopyWith(_$TopDiseaseElementImpl value,
          $Res Function(_$TopDiseaseElementImpl) then) =
      __$$TopDiseaseElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, TopDiseaseElementDisease disease});

  @override
  $TopDiseaseElementDiseaseCopyWith<$Res> get disease;
}

/// @nodoc
class __$$TopDiseaseElementImplCopyWithImpl<$Res>
    extends _$TopDiseaseElementCopyWithImpl<$Res, _$TopDiseaseElementImpl>
    implements _$$TopDiseaseElementImplCopyWith<$Res> {
  __$$TopDiseaseElementImplCopyWithImpl(_$TopDiseaseElementImpl _value,
      $Res Function(_$TopDiseaseElementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? disease = null,
  }) {
    return _then(_$TopDiseaseElementImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      disease: null == disease
          ? _value.disease
          : disease // ignore: cast_nullable_to_non_nullable
              as TopDiseaseElementDisease,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopDiseaseElementImpl implements _TopDiseaseElement {
  const _$TopDiseaseElementImpl({required this.count, required this.disease});

  factory _$TopDiseaseElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopDiseaseElementImplFromJson(json);

  @override
  final int count;
  @override
  final TopDiseaseElementDisease disease;

  @override
  String toString() {
    return 'TopDiseaseElement(count: $count, disease: $disease)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopDiseaseElementImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.disease, disease) || other.disease == disease));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, disease);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopDiseaseElementImplCopyWith<_$TopDiseaseElementImpl> get copyWith =>
      __$$TopDiseaseElementImplCopyWithImpl<_$TopDiseaseElementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopDiseaseElementImplToJson(
      this,
    );
  }
}

abstract class _TopDiseaseElement implements TopDiseaseElement {
  const factory _TopDiseaseElement(
          {required final int count,
          required final TopDiseaseElementDisease disease}) =
      _$TopDiseaseElementImpl;

  factory _TopDiseaseElement.fromJson(Map<String, dynamic> json) =
      _$TopDiseaseElementImpl.fromJson;

  @override
  int get count;
  @override
  TopDiseaseElementDisease get disease;
  @override
  @JsonKey(ignore: true)
  _$$TopDiseaseElementImplCopyWith<_$TopDiseaseElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopDiseaseElementDisease _$TopDiseaseElementDiseaseFromJson(
    Map<String, dynamic> json) {
  return _TopDiseaseElementDisease.fromJson(json);
}

/// @nodoc
mixin _$TopDiseaseElementDisease {
  @JsonKey(name: "Insect-Borne Diseases")
  int get insectBorneDiseases => throw _privateConstructorUsedError;
  @JsonKey(name: "Bacterial Diseases")
  int get bacterialDiseases => throw _privateConstructorUsedError;
  @JsonKey(name: "Viral Diseases")
  int get viralDiseases => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopDiseaseElementDiseaseCopyWith<TopDiseaseElementDisease> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopDiseaseElementDiseaseCopyWith<$Res> {
  factory $TopDiseaseElementDiseaseCopyWith(TopDiseaseElementDisease value,
          $Res Function(TopDiseaseElementDisease) then) =
      _$TopDiseaseElementDiseaseCopyWithImpl<$Res, TopDiseaseElementDisease>;
  @useResult
  $Res call(
      {@JsonKey(name: "Insect-Borne Diseases") int insectBorneDiseases,
      @JsonKey(name: "Bacterial Diseases") int bacterialDiseases,
      @JsonKey(name: "Viral Diseases") int viralDiseases});
}

/// @nodoc
class _$TopDiseaseElementDiseaseCopyWithImpl<$Res,
        $Val extends TopDiseaseElementDisease>
    implements $TopDiseaseElementDiseaseCopyWith<$Res> {
  _$TopDiseaseElementDiseaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insectBorneDiseases = null,
    Object? bacterialDiseases = null,
    Object? viralDiseases = null,
  }) {
    return _then(_value.copyWith(
      insectBorneDiseases: null == insectBorneDiseases
          ? _value.insectBorneDiseases
          : insectBorneDiseases // ignore: cast_nullable_to_non_nullable
              as int,
      bacterialDiseases: null == bacterialDiseases
          ? _value.bacterialDiseases
          : bacterialDiseases // ignore: cast_nullable_to_non_nullable
              as int,
      viralDiseases: null == viralDiseases
          ? _value.viralDiseases
          : viralDiseases // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopDiseaseElementDiseaseImplCopyWith<$Res>
    implements $TopDiseaseElementDiseaseCopyWith<$Res> {
  factory _$$TopDiseaseElementDiseaseImplCopyWith(
          _$TopDiseaseElementDiseaseImpl value,
          $Res Function(_$TopDiseaseElementDiseaseImpl) then) =
      __$$TopDiseaseElementDiseaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Insect-Borne Diseases") int insectBorneDiseases,
      @JsonKey(name: "Bacterial Diseases") int bacterialDiseases,
      @JsonKey(name: "Viral Diseases") int viralDiseases});
}

/// @nodoc
class __$$TopDiseaseElementDiseaseImplCopyWithImpl<$Res>
    extends _$TopDiseaseElementDiseaseCopyWithImpl<$Res,
        _$TopDiseaseElementDiseaseImpl>
    implements _$$TopDiseaseElementDiseaseImplCopyWith<$Res> {
  __$$TopDiseaseElementDiseaseImplCopyWithImpl(
      _$TopDiseaseElementDiseaseImpl _value,
      $Res Function(_$TopDiseaseElementDiseaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insectBorneDiseases = null,
    Object? bacterialDiseases = null,
    Object? viralDiseases = null,
  }) {
    return _then(_$TopDiseaseElementDiseaseImpl(
      insectBorneDiseases: null == insectBorneDiseases
          ? _value.insectBorneDiseases
          : insectBorneDiseases // ignore: cast_nullable_to_non_nullable
              as int,
      bacterialDiseases: null == bacterialDiseases
          ? _value.bacterialDiseases
          : bacterialDiseases // ignore: cast_nullable_to_non_nullable
              as int,
      viralDiseases: null == viralDiseases
          ? _value.viralDiseases
          : viralDiseases // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopDiseaseElementDiseaseImpl implements _TopDiseaseElementDisease {
  const _$TopDiseaseElementDiseaseImpl(
      {@JsonKey(name: "Insect-Borne Diseases")
      required this.insectBorneDiseases,
      @JsonKey(name: "Bacterial Diseases") required this.bacterialDiseases,
      @JsonKey(name: "Viral Diseases") required this.viralDiseases});

  factory _$TopDiseaseElementDiseaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopDiseaseElementDiseaseImplFromJson(json);

  @override
  @JsonKey(name: "Insect-Borne Diseases")
  final int insectBorneDiseases;
  @override
  @JsonKey(name: "Bacterial Diseases")
  final int bacterialDiseases;
  @override
  @JsonKey(name: "Viral Diseases")
  final int viralDiseases;

  @override
  String toString() {
    return 'TopDiseaseElementDisease(insectBorneDiseases: $insectBorneDiseases, bacterialDiseases: $bacterialDiseases, viralDiseases: $viralDiseases)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopDiseaseElementDiseaseImpl &&
            (identical(other.insectBorneDiseases, insectBorneDiseases) ||
                other.insectBorneDiseases == insectBorneDiseases) &&
            (identical(other.bacterialDiseases, bacterialDiseases) ||
                other.bacterialDiseases == bacterialDiseases) &&
            (identical(other.viralDiseases, viralDiseases) ||
                other.viralDiseases == viralDiseases));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, insectBorneDiseases, bacterialDiseases, viralDiseases);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopDiseaseElementDiseaseImplCopyWith<_$TopDiseaseElementDiseaseImpl>
      get copyWith => __$$TopDiseaseElementDiseaseImplCopyWithImpl<
          _$TopDiseaseElementDiseaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopDiseaseElementDiseaseImplToJson(
      this,
    );
  }
}

abstract class _TopDiseaseElementDisease implements TopDiseaseElementDisease {
  const factory _TopDiseaseElementDisease(
      {@JsonKey(name: "Insect-Borne Diseases")
      required final int insectBorneDiseases,
      @JsonKey(name: "Bacterial Diseases") required final int bacterialDiseases,
      @JsonKey(name: "Viral Diseases")
      required final int viralDiseases}) = _$TopDiseaseElementDiseaseImpl;

  factory _TopDiseaseElementDisease.fromJson(Map<String, dynamic> json) =
      _$TopDiseaseElementDiseaseImpl.fromJson;

  @override
  @JsonKey(name: "Insect-Borne Diseases")
  int get insectBorneDiseases;
  @override
  @JsonKey(name: "Bacterial Diseases")
  int get bacterialDiseases;
  @override
  @JsonKey(name: "Viral Diseases")
  int get viralDiseases;
  @override
  @JsonKey(ignore: true)
  _$$TopDiseaseElementDiseaseImplCopyWith<_$TopDiseaseElementDiseaseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TopGovernorate _$TopGovernorateFromJson(Map<String, dynamic> json) {
  return _TopGovernorate.fromJson(json);
}

/// @nodoc
mixin _$TopGovernorate {
  dynamic get governorate => throw _privateConstructorUsedError;
  List<TopGovernorateTopDisease> get topDiseases =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopGovernorateCopyWith<TopGovernorate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopGovernorateCopyWith<$Res> {
  factory $TopGovernorateCopyWith(
          TopGovernorate value, $Res Function(TopGovernorate) then) =
      _$TopGovernorateCopyWithImpl<$Res, TopGovernorate>;
  @useResult
  $Res call({dynamic governorate, List<TopGovernorateTopDisease> topDiseases});
}

/// @nodoc
class _$TopGovernorateCopyWithImpl<$Res, $Val extends TopGovernorate>
    implements $TopGovernorateCopyWith<$Res> {
  _$TopGovernorateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? governorate = freezed,
    Object? topDiseases = null,
  }) {
    return _then(_value.copyWith(
      governorate: freezed == governorate
          ? _value.governorate
          : governorate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      topDiseases: null == topDiseases
          ? _value.topDiseases
          : topDiseases // ignore: cast_nullable_to_non_nullable
              as List<TopGovernorateTopDisease>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopGovernorateImplCopyWith<$Res>
    implements $TopGovernorateCopyWith<$Res> {
  factory _$$TopGovernorateImplCopyWith(_$TopGovernorateImpl value,
          $Res Function(_$TopGovernorateImpl) then) =
      __$$TopGovernorateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic governorate, List<TopGovernorateTopDisease> topDiseases});
}

/// @nodoc
class __$$TopGovernorateImplCopyWithImpl<$Res>
    extends _$TopGovernorateCopyWithImpl<$Res, _$TopGovernorateImpl>
    implements _$$TopGovernorateImplCopyWith<$Res> {
  __$$TopGovernorateImplCopyWithImpl(
      _$TopGovernorateImpl _value, $Res Function(_$TopGovernorateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? governorate = freezed,
    Object? topDiseases = null,
  }) {
    return _then(_$TopGovernorateImpl(
      governorate: freezed == governorate
          ? _value.governorate
          : governorate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      topDiseases: null == topDiseases
          ? _value._topDiseases
          : topDiseases // ignore: cast_nullable_to_non_nullable
              as List<TopGovernorateTopDisease>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopGovernorateImpl implements _TopGovernorate {
  const _$TopGovernorateImpl(
      {this.governorate,
      required final List<TopGovernorateTopDisease> topDiseases})
      : _topDiseases = topDiseases;

  factory _$TopGovernorateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopGovernorateImplFromJson(json);

  @override
  final dynamic governorate;
  final List<TopGovernorateTopDisease> _topDiseases;
  @override
  List<TopGovernorateTopDisease> get topDiseases {
    if (_topDiseases is EqualUnmodifiableListView) return _topDiseases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topDiseases);
  }

  @override
  String toString() {
    return 'TopGovernorate(governorate: $governorate, topDiseases: $topDiseases)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopGovernorateImpl &&
            const DeepCollectionEquality()
                .equals(other.governorate, governorate) &&
            const DeepCollectionEquality()
                .equals(other._topDiseases, _topDiseases));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(governorate),
      const DeepCollectionEquality().hash(_topDiseases));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopGovernorateImplCopyWith<_$TopGovernorateImpl> get copyWith =>
      __$$TopGovernorateImplCopyWithImpl<_$TopGovernorateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopGovernorateImplToJson(
      this,
    );
  }
}

abstract class _TopGovernorate implements TopGovernorate {
  const factory _TopGovernorate(
          {final dynamic governorate,
          required final List<TopGovernorateTopDisease> topDiseases}) =
      _$TopGovernorateImpl;

  factory _TopGovernorate.fromJson(Map<String, dynamic> json) =
      _$TopGovernorateImpl.fromJson;

  @override
  dynamic get governorate;
  @override
  List<TopGovernorateTopDisease> get topDiseases;
  @override
  @JsonKey(ignore: true)
  _$$TopGovernorateImplCopyWith<_$TopGovernorateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopGovernorateTopDisease _$TopGovernorateTopDiseaseFromJson(
    Map<String, dynamic> json) {
  return _TopGovernorateTopDisease.fromJson(json);
}

/// @nodoc
mixin _$TopGovernorateTopDisease {
  String get disease => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopGovernorateTopDiseaseCopyWith<TopGovernorateTopDisease> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopGovernorateTopDiseaseCopyWith<$Res> {
  factory $TopGovernorateTopDiseaseCopyWith(TopGovernorateTopDisease value,
          $Res Function(TopGovernorateTopDisease) then) =
      _$TopGovernorateTopDiseaseCopyWithImpl<$Res, TopGovernorateTopDisease>;
  @useResult
  $Res call({String disease, int count});
}

/// @nodoc
class _$TopGovernorateTopDiseaseCopyWithImpl<$Res,
        $Val extends TopGovernorateTopDisease>
    implements $TopGovernorateTopDiseaseCopyWith<$Res> {
  _$TopGovernorateTopDiseaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disease = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      disease: null == disease
          ? _value.disease
          : disease // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopGovernorateTopDiseaseImplCopyWith<$Res>
    implements $TopGovernorateTopDiseaseCopyWith<$Res> {
  factory _$$TopGovernorateTopDiseaseImplCopyWith(
          _$TopGovernorateTopDiseaseImpl value,
          $Res Function(_$TopGovernorateTopDiseaseImpl) then) =
      __$$TopGovernorateTopDiseaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String disease, int count});
}

/// @nodoc
class __$$TopGovernorateTopDiseaseImplCopyWithImpl<$Res>
    extends _$TopGovernorateTopDiseaseCopyWithImpl<$Res,
        _$TopGovernorateTopDiseaseImpl>
    implements _$$TopGovernorateTopDiseaseImplCopyWith<$Res> {
  __$$TopGovernorateTopDiseaseImplCopyWithImpl(
      _$TopGovernorateTopDiseaseImpl _value,
      $Res Function(_$TopGovernorateTopDiseaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disease = null,
    Object? count = null,
  }) {
    return _then(_$TopGovernorateTopDiseaseImpl(
      disease: null == disease
          ? _value.disease
          : disease // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopGovernorateTopDiseaseImpl implements _TopGovernorateTopDisease {
  const _$TopGovernorateTopDiseaseImpl(
      {required this.disease, required this.count});

  factory _$TopGovernorateTopDiseaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopGovernorateTopDiseaseImplFromJson(json);

  @override
  final String disease;
  @override
  final int count;

  @override
  String toString() {
    return 'TopGovernorateTopDisease(disease: $disease, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopGovernorateTopDiseaseImpl &&
            (identical(other.disease, disease) || other.disease == disease) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, disease, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopGovernorateTopDiseaseImplCopyWith<_$TopGovernorateTopDiseaseImpl>
      get copyWith => __$$TopGovernorateTopDiseaseImplCopyWithImpl<
          _$TopGovernorateTopDiseaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopGovernorateTopDiseaseImplToJson(
      this,
    );
  }
}

abstract class _TopGovernorateTopDisease implements TopGovernorateTopDisease {
  const factory _TopGovernorateTopDisease(
      {required final String disease,
      required final int count}) = _$TopGovernorateTopDiseaseImpl;

  factory _TopGovernorateTopDisease.fromJson(Map<String, dynamic> json) =
      _$TopGovernorateTopDiseaseImpl.fromJson;

  @override
  String get disease;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$TopGovernorateTopDiseaseImplCopyWith<_$TopGovernorateTopDiseaseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

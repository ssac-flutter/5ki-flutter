// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainState _$MainStateFromJson(Map<String, dynamic> json) {
  return _MainState.fromJson(json);
}

/// @nodoc
mixin _$MainState {
  WeatherInfo? get currentWeatherInfo => throw _privateConstructorUsedError;
  List<WeatherInfo> get dailyWeatherInfoList =>
      throw _privateConstructorUsedError;
  List<WeatherInfo> get todayWeatherInfoList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call(
      {WeatherInfo? currentWeatherInfo,
      List<WeatherInfo> dailyWeatherInfoList,
      List<WeatherInfo> todayWeatherInfoList});

  $WeatherInfoCopyWith<$Res>? get currentWeatherInfo;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWeatherInfo = freezed,
    Object? dailyWeatherInfoList = null,
    Object? todayWeatherInfoList = null,
  }) {
    return _then(_value.copyWith(
      currentWeatherInfo: freezed == currentWeatherInfo
          ? _value.currentWeatherInfo
          : currentWeatherInfo // ignore: cast_nullable_to_non_nullable
              as WeatherInfo?,
      dailyWeatherInfoList: null == dailyWeatherInfoList
          ? _value.dailyWeatherInfoList
          : dailyWeatherInfoList // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfo>,
      todayWeatherInfoList: null == todayWeatherInfoList
          ? _value.todayWeatherInfoList
          : todayWeatherInfoList // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfo>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherInfoCopyWith<$Res>? get currentWeatherInfo {
    if (_value.currentWeatherInfo == null) {
      return null;
    }

    return $WeatherInfoCopyWith<$Res>(_value.currentWeatherInfo!, (value) {
      return _then(_value.copyWith(currentWeatherInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MainStateCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory _$$_MainStateCopyWith(
          _$_MainState value, $Res Function(_$_MainState) then) =
      __$$_MainStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WeatherInfo? currentWeatherInfo,
      List<WeatherInfo> dailyWeatherInfoList,
      List<WeatherInfo> todayWeatherInfoList});

  @override
  $WeatherInfoCopyWith<$Res>? get currentWeatherInfo;
}

/// @nodoc
class __$$_MainStateCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$_MainState>
    implements _$$_MainStateCopyWith<$Res> {
  __$$_MainStateCopyWithImpl(
      _$_MainState _value, $Res Function(_$_MainState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWeatherInfo = freezed,
    Object? dailyWeatherInfoList = null,
    Object? todayWeatherInfoList = null,
  }) {
    return _then(_$_MainState(
      currentWeatherInfo: freezed == currentWeatherInfo
          ? _value.currentWeatherInfo
          : currentWeatherInfo // ignore: cast_nullable_to_non_nullable
              as WeatherInfo?,
      dailyWeatherInfoList: null == dailyWeatherInfoList
          ? _value._dailyWeatherInfoList
          : dailyWeatherInfoList // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfo>,
      todayWeatherInfoList: null == todayWeatherInfoList
          ? _value._todayWeatherInfoList
          : todayWeatherInfoList // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainState with DiagnosticableTreeMixin implements _MainState {
  const _$_MainState(
      {this.currentWeatherInfo,
      final List<WeatherInfo> dailyWeatherInfoList = const [],
      final List<WeatherInfo> todayWeatherInfoList = const []})
      : _dailyWeatherInfoList = dailyWeatherInfoList,
        _todayWeatherInfoList = todayWeatherInfoList;

  factory _$_MainState.fromJson(Map<String, dynamic> json) =>
      _$$_MainStateFromJson(json);

  @override
  final WeatherInfo? currentWeatherInfo;
  final List<WeatherInfo> _dailyWeatherInfoList;
  @override
  @JsonKey()
  List<WeatherInfo> get dailyWeatherInfoList {
    if (_dailyWeatherInfoList is EqualUnmodifiableListView)
      return _dailyWeatherInfoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyWeatherInfoList);
  }

  final List<WeatherInfo> _todayWeatherInfoList;
  @override
  @JsonKey()
  List<WeatherInfo> get todayWeatherInfoList {
    if (_todayWeatherInfoList is EqualUnmodifiableListView)
      return _todayWeatherInfoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todayWeatherInfoList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState(currentWeatherInfo: $currentWeatherInfo, dailyWeatherInfoList: $dailyWeatherInfoList, todayWeatherInfoList: $todayWeatherInfoList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainState'))
      ..add(DiagnosticsProperty('currentWeatherInfo', currentWeatherInfo))
      ..add(DiagnosticsProperty('dailyWeatherInfoList', dailyWeatherInfoList))
      ..add(DiagnosticsProperty('todayWeatherInfoList', todayWeatherInfoList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainState &&
            (identical(other.currentWeatherInfo, currentWeatherInfo) ||
                other.currentWeatherInfo == currentWeatherInfo) &&
            const DeepCollectionEquality()
                .equals(other._dailyWeatherInfoList, _dailyWeatherInfoList) &&
            const DeepCollectionEquality()
                .equals(other._todayWeatherInfoList, _todayWeatherInfoList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentWeatherInfo,
      const DeepCollectionEquality().hash(_dailyWeatherInfoList),
      const DeepCollectionEquality().hash(_todayWeatherInfoList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainStateCopyWith<_$_MainState> get copyWith =>
      __$$_MainStateCopyWithImpl<_$_MainState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainStateToJson(
      this,
    );
  }
}

abstract class _MainState implements MainState {
  const factory _MainState(
      {final WeatherInfo? currentWeatherInfo,
      final List<WeatherInfo> dailyWeatherInfoList,
      final List<WeatherInfo> todayWeatherInfoList}) = _$_MainState;

  factory _MainState.fromJson(Map<String, dynamic> json) =
      _$_MainState.fromJson;

  @override
  WeatherInfo? get currentWeatherInfo;
  @override
  List<WeatherInfo> get dailyWeatherInfoList;
  @override
  List<WeatherInfo> get todayWeatherInfoList;
  @override
  @JsonKey(ignore: true)
  _$$_MainStateCopyWith<_$_MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

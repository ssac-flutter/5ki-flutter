// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherInfo _$WeatherInfoFromJson(Map<String, dynamic> json) {
  return _WeatherInfo.fromJson(json);
}

/// @nodoc
mixin _$WeatherInfo {
  DateTime get time => throw _privateConstructorUsedError;
  num get temperature => throw _privateConstructorUsedError;
  WeatherType get weatherType => throw _privateConstructorUsedError;
  num get humidity => throw _privateConstructorUsedError;
  num get windSpeed => throw _privateConstructorUsedError;
  num get pressure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherInfoCopyWith<WeatherInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherInfoCopyWith<$Res> {
  factory $WeatherInfoCopyWith(
          WeatherInfo value, $Res Function(WeatherInfo) then) =
      _$WeatherInfoCopyWithImpl<$Res, WeatherInfo>;
  @useResult
  $Res call(
      {DateTime time,
      num temperature,
      WeatherType weatherType,
      num humidity,
      num windSpeed,
      num pressure});

  $WeatherTypeCopyWith<$Res> get weatherType;
}

/// @nodoc
class _$WeatherInfoCopyWithImpl<$Res, $Val extends WeatherInfo>
    implements $WeatherInfoCopyWith<$Res> {
  _$WeatherInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature = null,
    Object? weatherType = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? pressure = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as num,
      weatherType: null == weatherType
          ? _value.weatherType
          : weatherType // ignore: cast_nullable_to_non_nullable
              as WeatherType,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as num,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherTypeCopyWith<$Res> get weatherType {
    return $WeatherTypeCopyWith<$Res>(_value.weatherType, (value) {
      return _then(_value.copyWith(weatherType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherInfoCopyWith<$Res>
    implements $WeatherInfoCopyWith<$Res> {
  factory _$$_WeatherInfoCopyWith(
          _$_WeatherInfo value, $Res Function(_$_WeatherInfo) then) =
      __$$_WeatherInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime time,
      num temperature,
      WeatherType weatherType,
      num humidity,
      num windSpeed,
      num pressure});

  @override
  $WeatherTypeCopyWith<$Res> get weatherType;
}

/// @nodoc
class __$$_WeatherInfoCopyWithImpl<$Res>
    extends _$WeatherInfoCopyWithImpl<$Res, _$_WeatherInfo>
    implements _$$_WeatherInfoCopyWith<$Res> {
  __$$_WeatherInfoCopyWithImpl(
      _$_WeatherInfo _value, $Res Function(_$_WeatherInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature = null,
    Object? weatherType = null,
    Object? humidity = null,
    Object? windSpeed = null,
    Object? pressure = null,
  }) {
    return _then(_$_WeatherInfo(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as num,
      weatherType: null == weatherType
          ? _value.weatherType
          : weatherType // ignore: cast_nullable_to_non_nullable
              as WeatherType,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as num,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as num,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherInfo with DiagnosticableTreeMixin implements _WeatherInfo {
  const _$_WeatherInfo(
      {required this.time,
      required this.temperature,
      required this.weatherType,
      required this.humidity,
      required this.windSpeed,
      required this.pressure});

  factory _$_WeatherInfo.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherInfoFromJson(json);

  @override
  final DateTime time;
  @override
  final num temperature;
  @override
  final WeatherType weatherType;
  @override
  final num humidity;
  @override
  final num windSpeed;
  @override
  final num pressure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherInfo(time: $time, temperature: $temperature, weatherType: $weatherType, humidity: $humidity, windSpeed: $windSpeed, pressure: $pressure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherInfo'))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('temperature', temperature))
      ..add(DiagnosticsProperty('weatherType', weatherType))
      ..add(DiagnosticsProperty('humidity', humidity))
      ..add(DiagnosticsProperty('windSpeed', windSpeed))
      ..add(DiagnosticsProperty('pressure', pressure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherInfo &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.weatherType, weatherType) ||
                other.weatherType == weatherType) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, temperature, weatherType,
      humidity, windSpeed, pressure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherInfoCopyWith<_$_WeatherInfo> get copyWith =>
      __$$_WeatherInfoCopyWithImpl<_$_WeatherInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherInfoToJson(
      this,
    );
  }
}

abstract class _WeatherInfo implements WeatherInfo {
  const factory _WeatherInfo(
      {required final DateTime time,
      required final num temperature,
      required final WeatherType weatherType,
      required final num humidity,
      required final num windSpeed,
      required final num pressure}) = _$_WeatherInfo;

  factory _WeatherInfo.fromJson(Map<String, dynamic> json) =
      _$_WeatherInfo.fromJson;

  @override
  DateTime get time;
  @override
  num get temperature;
  @override
  WeatherType get weatherType;
  @override
  num get humidity;
  @override
  num get windSpeed;
  @override
  num get pressure;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherInfoCopyWith<_$_WeatherInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

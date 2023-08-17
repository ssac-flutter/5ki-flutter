// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherType _$WeatherTypeFromJson(Map<String, dynamic> json) {
  return _WeatherType.fromJson(json);
}

/// @nodoc
mixin _$WeatherType {
  String get status => throw _privateConstructorUsedError;
  String get iconName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherTypeCopyWith<WeatherType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherTypeCopyWith<$Res> {
  factory $WeatherTypeCopyWith(
          WeatherType value, $Res Function(WeatherType) then) =
      _$WeatherTypeCopyWithImpl<$Res, WeatherType>;
  @useResult
  $Res call({String status, String iconName});
}

/// @nodoc
class _$WeatherTypeCopyWithImpl<$Res, $Val extends WeatherType>
    implements $WeatherTypeCopyWith<$Res> {
  _$WeatherTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? iconName = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      iconName: null == iconName
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherTypeCopyWith<$Res>
    implements $WeatherTypeCopyWith<$Res> {
  factory _$$_WeatherTypeCopyWith(
          _$_WeatherType value, $Res Function(_$_WeatherType) then) =
      __$$_WeatherTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String iconName});
}

/// @nodoc
class __$$_WeatherTypeCopyWithImpl<$Res>
    extends _$WeatherTypeCopyWithImpl<$Res, _$_WeatherType>
    implements _$$_WeatherTypeCopyWith<$Res> {
  __$$_WeatherTypeCopyWithImpl(
      _$_WeatherType _value, $Res Function(_$_WeatherType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? iconName = null,
  }) {
    return _then(_$_WeatherType(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      iconName: null == iconName
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherType with DiagnosticableTreeMixin implements _WeatherType {
  const _$_WeatherType({required this.status, required this.iconName});

  factory _$_WeatherType.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherTypeFromJson(json);

  @override
  final String status;
  @override
  final String iconName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherType(status: $status, iconName: $iconName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherType'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('iconName', iconName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherType &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.iconName, iconName) ||
                other.iconName == iconName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, iconName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherTypeCopyWith<_$_WeatherType> get copyWith =>
      __$$_WeatherTypeCopyWithImpl<_$_WeatherType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherTypeToJson(
      this,
    );
  }
}

abstract class _WeatherType implements WeatherType {
  const factory _WeatherType(
      {required final String status,
      required final String iconName}) = _$_WeatherType;

  factory _WeatherType.fromJson(Map<String, dynamic> json) =
      _$_WeatherType.fromJson;

  @override
  String get status;
  @override
  String get iconName;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherTypeCopyWith<_$_WeatherType> get copyWith =>
      throw _privateConstructorUsedError;
}

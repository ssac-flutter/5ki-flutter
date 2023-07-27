// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rates_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RatesResult _$RatesResultFromJson(Map<String, dynamic> json) {
  return _RatesResult.fromJson(json);
}

/// @nodoc
mixin _$RatesResult {
  DateTime get lastUpdateTime => throw _privateConstructorUsedError;
  DateTime get nextUpdateTime => throw _privateConstructorUsedError;
  List<Rate> get rates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatesResultCopyWith<RatesResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatesResultCopyWith<$Res> {
  factory $RatesResultCopyWith(
          RatesResult value, $Res Function(RatesResult) then) =
      _$RatesResultCopyWithImpl<$Res, RatesResult>;
  @useResult
  $Res call(
      {DateTime lastUpdateTime, DateTime nextUpdateTime, List<Rate> rates});
}

/// @nodoc
class _$RatesResultCopyWithImpl<$Res, $Val extends RatesResult>
    implements $RatesResultCopyWith<$Res> {
  _$RatesResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdateTime = null,
    Object? nextUpdateTime = null,
    Object? rates = null,
  }) {
    return _then(_value.copyWith(
      lastUpdateTime: null == lastUpdateTime
          ? _value.lastUpdateTime
          : lastUpdateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nextUpdateTime: null == nextUpdateTime
          ? _value.nextUpdateTime
          : nextUpdateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rates: null == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<Rate>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RatesResultCopyWith<$Res>
    implements $RatesResultCopyWith<$Res> {
  factory _$$_RatesResultCopyWith(
          _$_RatesResult value, $Res Function(_$_RatesResult) then) =
      __$$_RatesResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime lastUpdateTime, DateTime nextUpdateTime, List<Rate> rates});
}

/// @nodoc
class __$$_RatesResultCopyWithImpl<$Res>
    extends _$RatesResultCopyWithImpl<$Res, _$_RatesResult>
    implements _$$_RatesResultCopyWith<$Res> {
  __$$_RatesResultCopyWithImpl(
      _$_RatesResult _value, $Res Function(_$_RatesResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastUpdateTime = null,
    Object? nextUpdateTime = null,
    Object? rates = null,
  }) {
    return _then(_$_RatesResult(
      lastUpdateTime: null == lastUpdateTime
          ? _value.lastUpdateTime
          : lastUpdateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nextUpdateTime: null == nextUpdateTime
          ? _value.nextUpdateTime
          : nextUpdateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rates: null == rates
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<Rate>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RatesResult with DiagnosticableTreeMixin implements _RatesResult {
  const _$_RatesResult(
      {required this.lastUpdateTime,
      required this.nextUpdateTime,
      required final List<Rate> rates})
      : _rates = rates;

  factory _$_RatesResult.fromJson(Map<String, dynamic> json) =>
      _$$_RatesResultFromJson(json);

  @override
  final DateTime lastUpdateTime;
  @override
  final DateTime nextUpdateTime;
  final List<Rate> _rates;
  @override
  List<Rate> get rates {
    if (_rates is EqualUnmodifiableListView) return _rates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rates);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RatesResult(lastUpdateTime: $lastUpdateTime, nextUpdateTime: $nextUpdateTime, rates: $rates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RatesResult'))
      ..add(DiagnosticsProperty('lastUpdateTime', lastUpdateTime))
      ..add(DiagnosticsProperty('nextUpdateTime', nextUpdateTime))
      ..add(DiagnosticsProperty('rates', rates));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RatesResult &&
            (identical(other.lastUpdateTime, lastUpdateTime) ||
                other.lastUpdateTime == lastUpdateTime) &&
            (identical(other.nextUpdateTime, nextUpdateTime) ||
                other.nextUpdateTime == nextUpdateTime) &&
            const DeepCollectionEquality().equals(other._rates, _rates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lastUpdateTime, nextUpdateTime,
      const DeepCollectionEquality().hash(_rates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RatesResultCopyWith<_$_RatesResult> get copyWith =>
      __$$_RatesResultCopyWithImpl<_$_RatesResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RatesResultToJson(
      this,
    );
  }
}

abstract class _RatesResult implements RatesResult {
  const factory _RatesResult(
      {required final DateTime lastUpdateTime,
      required final DateTime nextUpdateTime,
      required final List<Rate> rates}) = _$_RatesResult;

  factory _RatesResult.fromJson(Map<String, dynamic> json) =
      _$_RatesResult.fromJson;

  @override
  DateTime get lastUpdateTime;
  @override
  DateTime get nextUpdateTime;
  @override
  List<Rate> get rates;
  @override
  @JsonKey(ignore: true)
  _$$_RatesResultCopyWith<_$_RatesResult> get copyWith =>
      throw _privateConstructorUsedError;
}

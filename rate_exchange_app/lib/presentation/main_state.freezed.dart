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
  List<Rate> get rates => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  num get baseMoney => throw _privateConstructorUsedError;
  num get targetMoney => throw _privateConstructorUsedError;
  String get baseCode => throw _privateConstructorUsedError;
  String get targetCode => throw _privateConstructorUsedError;
  DateTime? get lastUpdateTime => throw _privateConstructorUsedError;

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
      {List<Rate> rates,
      bool isLoading,
      num baseMoney,
      num targetMoney,
      String baseCode,
      String targetCode,
      DateTime? lastUpdateTime});
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
    Object? rates = null,
    Object? isLoading = null,
    Object? baseMoney = null,
    Object? targetMoney = null,
    Object? baseCode = null,
    Object? targetCode = null,
    Object? lastUpdateTime = freezed,
  }) {
    return _then(_value.copyWith(
      rates: null == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<Rate>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      baseMoney: null == baseMoney
          ? _value.baseMoney
          : baseMoney // ignore: cast_nullable_to_non_nullable
              as num,
      targetMoney: null == targetMoney
          ? _value.targetMoney
          : targetMoney // ignore: cast_nullable_to_non_nullable
              as num,
      baseCode: null == baseCode
          ? _value.baseCode
          : baseCode // ignore: cast_nullable_to_non_nullable
              as String,
      targetCode: null == targetCode
          ? _value.targetCode
          : targetCode // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdateTime: freezed == lastUpdateTime
          ? _value.lastUpdateTime
          : lastUpdateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
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
      {List<Rate> rates,
      bool isLoading,
      num baseMoney,
      num targetMoney,
      String baseCode,
      String targetCode,
      DateTime? lastUpdateTime});
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
    Object? rates = null,
    Object? isLoading = null,
    Object? baseMoney = null,
    Object? targetMoney = null,
    Object? baseCode = null,
    Object? targetCode = null,
    Object? lastUpdateTime = freezed,
  }) {
    return _then(_$_MainState(
      rates: null == rates
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<Rate>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      baseMoney: null == baseMoney
          ? _value.baseMoney
          : baseMoney // ignore: cast_nullable_to_non_nullable
              as num,
      targetMoney: null == targetMoney
          ? _value.targetMoney
          : targetMoney // ignore: cast_nullable_to_non_nullable
              as num,
      baseCode: null == baseCode
          ? _value.baseCode
          : baseCode // ignore: cast_nullable_to_non_nullable
              as String,
      targetCode: null == targetCode
          ? _value.targetCode
          : targetCode // ignore: cast_nullable_to_non_nullable
              as String,
      lastUpdateTime: freezed == lastUpdateTime
          ? _value.lastUpdateTime
          : lastUpdateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainState with DiagnosticableTreeMixin implements _MainState {
  const _$_MainState(
      {final List<Rate> rates = const [],
      this.isLoading = false,
      this.baseMoney = 0,
      this.targetMoney = 0,
      this.baseCode = 'KRW',
      this.targetCode = 'USD',
      this.lastUpdateTime})
      : _rates = rates;

  factory _$_MainState.fromJson(Map<String, dynamic> json) =>
      _$$_MainStateFromJson(json);

  final List<Rate> _rates;
  @override
  @JsonKey()
  List<Rate> get rates {
    if (_rates is EqualUnmodifiableListView) return _rates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rates);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final num baseMoney;
  @override
  @JsonKey()
  final num targetMoney;
  @override
  @JsonKey()
  final String baseCode;
  @override
  @JsonKey()
  final String targetCode;
  @override
  final DateTime? lastUpdateTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState(rates: $rates, isLoading: $isLoading, baseMoney: $baseMoney, targetMoney: $targetMoney, baseCode: $baseCode, targetCode: $targetCode, lastUpdateTime: $lastUpdateTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainState'))
      ..add(DiagnosticsProperty('rates', rates))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('baseMoney', baseMoney))
      ..add(DiagnosticsProperty('targetMoney', targetMoney))
      ..add(DiagnosticsProperty('baseCode', baseCode))
      ..add(DiagnosticsProperty('targetCode', targetCode))
      ..add(DiagnosticsProperty('lastUpdateTime', lastUpdateTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainState &&
            const DeepCollectionEquality().equals(other._rates, _rates) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.baseMoney, baseMoney) ||
                other.baseMoney == baseMoney) &&
            (identical(other.targetMoney, targetMoney) ||
                other.targetMoney == targetMoney) &&
            (identical(other.baseCode, baseCode) ||
                other.baseCode == baseCode) &&
            (identical(other.targetCode, targetCode) ||
                other.targetCode == targetCode) &&
            (identical(other.lastUpdateTime, lastUpdateTime) ||
                other.lastUpdateTime == lastUpdateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_rates),
      isLoading,
      baseMoney,
      targetMoney,
      baseCode,
      targetCode,
      lastUpdateTime);

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
      {final List<Rate> rates,
      final bool isLoading,
      final num baseMoney,
      final num targetMoney,
      final String baseCode,
      final String targetCode,
      final DateTime? lastUpdateTime}) = _$_MainState;

  factory _MainState.fromJson(Map<String, dynamic> json) =
      _$_MainState.fromJson;

  @override
  List<Rate> get rates;
  @override
  bool get isLoading;
  @override
  num get baseMoney;
  @override
  num get targetMoney;
  @override
  String get baseCode;
  @override
  String get targetCode;
  @override
  DateTime? get lastUpdateTime;
  @override
  @JsonKey(ignore: true)
  _$$_MainStateCopyWith<_$_MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

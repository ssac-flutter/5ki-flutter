// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainUiEvent {
  num get baseMoney => throw _privateConstructorUsedError;
  num get targetMoney => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(num baseMoney, num targetMoney) updateValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(num baseMoney, num targetMoney)? updateValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(num baseMoney, num targetMoney)? updateValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateValue value) updateValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateValue value)? updateValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateValue value)? updateValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainUiEventCopyWith<MainUiEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainUiEventCopyWith<$Res> {
  factory $MainUiEventCopyWith(
          MainUiEvent value, $Res Function(MainUiEvent) then) =
      _$MainUiEventCopyWithImpl<$Res, MainUiEvent>;
  @useResult
  $Res call({num baseMoney, num targetMoney});
}

/// @nodoc
class _$MainUiEventCopyWithImpl<$Res, $Val extends MainUiEvent>
    implements $MainUiEventCopyWith<$Res> {
  _$MainUiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseMoney = null,
    Object? targetMoney = null,
  }) {
    return _then(_value.copyWith(
      baseMoney: null == baseMoney
          ? _value.baseMoney
          : baseMoney // ignore: cast_nullable_to_non_nullable
              as num,
      targetMoney: null == targetMoney
          ? _value.targetMoney
          : targetMoney // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateValueCopyWith<$Res>
    implements $MainUiEventCopyWith<$Res> {
  factory _$$UpdateValueCopyWith(
          _$UpdateValue value, $Res Function(_$UpdateValue) then) =
      __$$UpdateValueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num baseMoney, num targetMoney});
}

/// @nodoc
class __$$UpdateValueCopyWithImpl<$Res>
    extends _$MainUiEventCopyWithImpl<$Res, _$UpdateValue>
    implements _$$UpdateValueCopyWith<$Res> {
  __$$UpdateValueCopyWithImpl(
      _$UpdateValue _value, $Res Function(_$UpdateValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseMoney = null,
    Object? targetMoney = null,
  }) {
    return _then(_$UpdateValue(
      null == baseMoney
          ? _value.baseMoney
          : baseMoney // ignore: cast_nullable_to_non_nullable
              as num,
      null == targetMoney
          ? _value.targetMoney
          : targetMoney // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$UpdateValue with DiagnosticableTreeMixin implements UpdateValue {
  const _$UpdateValue(this.baseMoney, this.targetMoney);

  @override
  final num baseMoney;
  @override
  final num targetMoney;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainUiEvent.updateValue(baseMoney: $baseMoney, targetMoney: $targetMoney)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainUiEvent.updateValue'))
      ..add(DiagnosticsProperty('baseMoney', baseMoney))
      ..add(DiagnosticsProperty('targetMoney', targetMoney));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateValue &&
            (identical(other.baseMoney, baseMoney) ||
                other.baseMoney == baseMoney) &&
            (identical(other.targetMoney, targetMoney) ||
                other.targetMoney == targetMoney));
  }

  @override
  int get hashCode => Object.hash(runtimeType, baseMoney, targetMoney);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateValueCopyWith<_$UpdateValue> get copyWith =>
      __$$UpdateValueCopyWithImpl<_$UpdateValue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(num baseMoney, num targetMoney) updateValue,
  }) {
    return updateValue(baseMoney, targetMoney);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(num baseMoney, num targetMoney)? updateValue,
  }) {
    return updateValue?.call(baseMoney, targetMoney);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(num baseMoney, num targetMoney)? updateValue,
    required TResult orElse(),
  }) {
    if (updateValue != null) {
      return updateValue(baseMoney, targetMoney);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateValue value) updateValue,
  }) {
    return updateValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateValue value)? updateValue,
  }) {
    return updateValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateValue value)? updateValue,
    required TResult orElse(),
  }) {
    if (updateValue != null) {
      return updateValue(this);
    }
    return orElse();
  }
}

abstract class UpdateValue implements MainUiEvent {
  const factory UpdateValue(final num baseMoney, final num targetMoney) =
      _$UpdateValue;

  @override
  num get baseMoney;
  @override
  num get targetMoney;
  @override
  @JsonKey(ignore: true)
  _$$UpdateValueCopyWith<_$UpdateValue> get copyWith =>
      throw _privateConstructorUsedError;
}

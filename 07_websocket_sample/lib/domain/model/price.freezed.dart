// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Price _$PriceFromJson(Map<String, dynamic> json) {
  return _Price.fromJson(json);
}

/// @nodoc
mixin _$Price {
  String get e => throw _privateConstructorUsedError;
  num get E => throw _privateConstructorUsedError;
  num get a => throw _privateConstructorUsedError;
  String get p => throw _privateConstructorUsedError;
  String get q => throw _privateConstructorUsedError;
  num get f => throw _privateConstructorUsedError;
  num get l => throw _privateConstructorUsedError;
  num get T => throw _privateConstructorUsedError;
  bool get m => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceCopyWith<Price> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCopyWith<$Res> {
  factory $PriceCopyWith(Price value, $Res Function(Price) then) =
      _$PriceCopyWithImpl<$Res, Price>;
  @useResult
  $Res call(
      {String e,
      num E,
      num a,
      String p,
      String q,
      num f,
      num l,
      num T,
      bool m});
}

/// @nodoc
class _$PriceCopyWithImpl<$Res, $Val extends Price>
    implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
    Object? E = null,
    Object? a = null,
    Object? p = null,
    Object? q = null,
    Object? f = null,
    Object? l = null,
    Object? T = null,
    Object? m = null,
  }) {
    return _then(_value.copyWith(
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      E: null == E
          ? _value.E
          : E // ignore: cast_nullable_to_non_nullable
              as num,
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as num,
      p: null == p
          ? _value.p
          : p // ignore: cast_nullable_to_non_nullable
              as String,
      q: null == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String,
      f: null == f
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as num,
      l: null == l
          ? _value.l
          : l // ignore: cast_nullable_to_non_nullable
              as num,
      T: null == T
          ? _value.T
          : T // ignore: cast_nullable_to_non_nullable
              as num,
      m: null == m
          ? _value.m
          : m // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriceCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$$_PriceCopyWith(_$_Price value, $Res Function(_$_Price) then) =
      __$$_PriceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String e,
      num E,
      num a,
      String p,
      String q,
      num f,
      num l,
      num T,
      bool m});
}

/// @nodoc
class __$$_PriceCopyWithImpl<$Res> extends _$PriceCopyWithImpl<$Res, _$_Price>
    implements _$$_PriceCopyWith<$Res> {
  __$$_PriceCopyWithImpl(_$_Price _value, $Res Function(_$_Price) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
    Object? E = null,
    Object? a = null,
    Object? p = null,
    Object? q = null,
    Object? f = null,
    Object? l = null,
    Object? T = null,
    Object? m = null,
  }) {
    return _then(_$_Price(
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
      E: null == E
          ? _value.E
          : E // ignore: cast_nullable_to_non_nullable
              as num,
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as num,
      p: null == p
          ? _value.p
          : p // ignore: cast_nullable_to_non_nullable
              as String,
      q: null == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String,
      f: null == f
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as num,
      l: null == l
          ? _value.l
          : l // ignore: cast_nullable_to_non_nullable
              as num,
      T: null == T
          ? _value.T
          : T // ignore: cast_nullable_to_non_nullable
              as num,
      m: null == m
          ? _value.m
          : m // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Price with DiagnosticableTreeMixin implements _Price {
  const _$_Price(
      {required this.e,
      required this.E,
      required this.a,
      required this.p,
      required this.q,
      required this.f,
      required this.l,
      required this.T,
      required this.m});

  factory _$_Price.fromJson(Map<String, dynamic> json) =>
      _$$_PriceFromJson(json);

  @override
  final String e;
  @override
  final num E;
  @override
  final num a;
  @override
  final String p;
  @override
  final String q;
  @override
  final num f;
  @override
  final num l;
  @override
  final num T;
  @override
  final bool m;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Price(e: $e, E: $E, a: $a, p: $p, q: $q, f: $f, l: $l, T: $T, m: $m)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Price'))
      ..add(DiagnosticsProperty('e', e))
      ..add(DiagnosticsProperty('E', E))
      ..add(DiagnosticsProperty('a', a))
      ..add(DiagnosticsProperty('p', p))
      ..add(DiagnosticsProperty('q', q))
      ..add(DiagnosticsProperty('f', f))
      ..add(DiagnosticsProperty('l', l))
      ..add(DiagnosticsProperty('T', T))
      ..add(DiagnosticsProperty('m', m));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Price &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.E, E) || other.E == E) &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.p, p) || other.p == p) &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.f, f) || other.f == f) &&
            (identical(other.l, l) || other.l == l) &&
            (identical(other.T, T) || other.T == T) &&
            (identical(other.m, m) || other.m == m));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, e, E, a, p, q, f, l, T, m);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceCopyWith<_$_Price> get copyWith =>
      __$$_PriceCopyWithImpl<_$_Price>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceToJson(
      this,
    );
  }
}

abstract class _Price implements Price {
  const factory _Price(
      {required final String e,
      required final num E,
      required final num a,
      required final String p,
      required final String q,
      required final num f,
      required final num l,
      required final num T,
      required final bool m}) = _$_Price;

  factory _Price.fromJson(Map<String, dynamic> json) = _$_Price.fromJson;

  @override
  String get e;
  @override
  num get E;
  @override
  num get a;
  @override
  String get p;
  @override
  String get q;
  @override
  num get f;
  @override
  num get l;
  @override
  num get T;
  @override
  bool get m;
  @override
  @JsonKey(ignore: true)
  _$$_PriceCopyWith<_$_Price> get copyWith =>
      throw _privateConstructorUsedError;
}

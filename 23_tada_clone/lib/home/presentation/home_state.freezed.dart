// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeState _$HomeStateFromJson(Map<String, dynamic> json) {
  return _HomeState.fromJson(json);
}

/// @nodoc
mixin _$HomeState {
  String get userName => throw _privateConstructorUsedError;
  int get sectionNumber => throw _privateConstructorUsedError;
  String? get depart => throw _privateConstructorUsedError;
  String? get arrive => throw _privateConstructorUsedError;
  List<Address> get recentlyAddresses => throw _privateConstructorUsedError;
  List<Address> get searchResultAddresses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {String userName,
      int sectionNumber,
      String? depart,
      String? arrive,
      List<Address> recentlyAddresses,
      List<Address> searchResultAddresses});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? sectionNumber = null,
    Object? depart = freezed,
    Object? arrive = freezed,
    Object? recentlyAddresses = null,
    Object? searchResultAddresses = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      sectionNumber: null == sectionNumber
          ? _value.sectionNumber
          : sectionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      depart: freezed == depart
          ? _value.depart
          : depart // ignore: cast_nullable_to_non_nullable
              as String?,
      arrive: freezed == arrive
          ? _value.arrive
          : arrive // ignore: cast_nullable_to_non_nullable
              as String?,
      recentlyAddresses: null == recentlyAddresses
          ? _value.recentlyAddresses
          : recentlyAddresses // ignore: cast_nullable_to_non_nullable
              as List<Address>,
      searchResultAddresses: null == searchResultAddresses
          ? _value.searchResultAddresses
          : searchResultAddresses // ignore: cast_nullable_to_non_nullable
              as List<Address>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userName,
      int sectionNumber,
      String? depart,
      String? arrive,
      List<Address> recentlyAddresses,
      List<Address> searchResultAddresses});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? sectionNumber = null,
    Object? depart = freezed,
    Object? arrive = freezed,
    Object? recentlyAddresses = null,
    Object? searchResultAddresses = null,
  }) {
    return _then(_$_HomeState(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      sectionNumber: null == sectionNumber
          ? _value.sectionNumber
          : sectionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      depart: freezed == depart
          ? _value.depart
          : depart // ignore: cast_nullable_to_non_nullable
              as String?,
      arrive: freezed == arrive
          ? _value.arrive
          : arrive // ignore: cast_nullable_to_non_nullable
              as String?,
      recentlyAddresses: null == recentlyAddresses
          ? _value._recentlyAddresses
          : recentlyAddresses // ignore: cast_nullable_to_non_nullable
              as List<Address>,
      searchResultAddresses: null == searchResultAddresses
          ? _value._searchResultAddresses
          : searchResultAddresses // ignore: cast_nullable_to_non_nullable
              as List<Address>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeState with DiagnosticableTreeMixin implements _HomeState {
  const _$_HomeState(
      {required this.userName,
      required this.sectionNumber,
      this.depart,
      this.arrive,
      final List<Address> recentlyAddresses = const [],
      final List<Address> searchResultAddresses = const []})
      : _recentlyAddresses = recentlyAddresses,
        _searchResultAddresses = searchResultAddresses;

  factory _$_HomeState.fromJson(Map<String, dynamic> json) =>
      _$$_HomeStateFromJson(json);

  @override
  final String userName;
  @override
  final int sectionNumber;
  @override
  final String? depart;
  @override
  final String? arrive;
  final List<Address> _recentlyAddresses;
  @override
  @JsonKey()
  List<Address> get recentlyAddresses {
    if (_recentlyAddresses is EqualUnmodifiableListView)
      return _recentlyAddresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentlyAddresses);
  }

  final List<Address> _searchResultAddresses;
  @override
  @JsonKey()
  List<Address> get searchResultAddresses {
    if (_searchResultAddresses is EqualUnmodifiableListView)
      return _searchResultAddresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResultAddresses);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(userName: $userName, sectionNumber: $sectionNumber, depart: $depart, arrive: $arrive, recentlyAddresses: $recentlyAddresses, searchResultAddresses: $searchResultAddresses)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('userName', userName))
      ..add(DiagnosticsProperty('sectionNumber', sectionNumber))
      ..add(DiagnosticsProperty('depart', depart))
      ..add(DiagnosticsProperty('arrive', arrive))
      ..add(DiagnosticsProperty('recentlyAddresses', recentlyAddresses))
      ..add(
          DiagnosticsProperty('searchResultAddresses', searchResultAddresses));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.sectionNumber, sectionNumber) ||
                other.sectionNumber == sectionNumber) &&
            (identical(other.depart, depart) || other.depart == depart) &&
            (identical(other.arrive, arrive) || other.arrive == arrive) &&
            const DeepCollectionEquality()
                .equals(other._recentlyAddresses, _recentlyAddresses) &&
            const DeepCollectionEquality()
                .equals(other._searchResultAddresses, _searchResultAddresses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userName,
      sectionNumber,
      depart,
      arrive,
      const DeepCollectionEquality().hash(_recentlyAddresses),
      const DeepCollectionEquality().hash(_searchResultAddresses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeStateToJson(
      this,
    );
  }
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final String userName,
      required final int sectionNumber,
      final String? depart,
      final String? arrive,
      final List<Address> recentlyAddresses,
      final List<Address> searchResultAddresses}) = _$_HomeState;

  factory _HomeState.fromJson(Map<String, dynamic> json) =
      _$_HomeState.fromJson;

  @override
  String get userName;
  @override
  int get sectionNumber;
  @override
  String? get depart;
  @override
  String? get arrive;
  @override
  List<Address> get recentlyAddresses;
  @override
  List<Address> get searchResultAddresses;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

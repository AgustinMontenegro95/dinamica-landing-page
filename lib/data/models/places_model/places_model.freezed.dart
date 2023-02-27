// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'places_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlacesModelDM _$PlacesModelDMFromJson(Map<String, dynamic> json) {
  return _PlacesModelDM.fromJson(json);
}

/// @nodoc
mixin _$PlacesModelDM {
  List<DepositMoneyModel> get places => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlacesModelDMCopyWith<PlacesModelDM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesModelDMCopyWith<$Res> {
  factory $PlacesModelDMCopyWith(
          PlacesModelDM value, $Res Function(PlacesModelDM) then) =
      _$PlacesModelDMCopyWithImpl<$Res, PlacesModelDM>;
  @useResult
  $Res call({List<DepositMoneyModel> places});
}

/// @nodoc
class _$PlacesModelDMCopyWithImpl<$Res, $Val extends PlacesModelDM>
    implements $PlacesModelDMCopyWith<$Res> {
  _$PlacesModelDMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
  }) {
    return _then(_value.copyWith(
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<DepositMoneyModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlacesModelDMCopyWith<$Res>
    implements $PlacesModelDMCopyWith<$Res> {
  factory _$$_PlacesModelDMCopyWith(
          _$_PlacesModelDM value, $Res Function(_$_PlacesModelDM) then) =
      __$$_PlacesModelDMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DepositMoneyModel> places});
}

/// @nodoc
class __$$_PlacesModelDMCopyWithImpl<$Res>
    extends _$PlacesModelDMCopyWithImpl<$Res, _$_PlacesModelDM>
    implements _$$_PlacesModelDMCopyWith<$Res> {
  __$$_PlacesModelDMCopyWithImpl(
      _$_PlacesModelDM _value, $Res Function(_$_PlacesModelDM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
  }) {
    return _then(_$_PlacesModelDM(
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<DepositMoneyModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlacesModelDM implements _PlacesModelDM {
  const _$_PlacesModelDM({required final List<DepositMoneyModel> places})
      : _places = places;

  factory _$_PlacesModelDM.fromJson(Map<String, dynamic> json) =>
      _$$_PlacesModelDMFromJson(json);

  final List<DepositMoneyModel> _places;
  @override
  List<DepositMoneyModel> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  String toString() {
    return 'PlacesModelDM(places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlacesModelDM &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlacesModelDMCopyWith<_$_PlacesModelDM> get copyWith =>
      __$$_PlacesModelDMCopyWithImpl<_$_PlacesModelDM>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlacesModelDMToJson(
      this,
    );
  }
}

abstract class _PlacesModelDM implements PlacesModelDM {
  const factory _PlacesModelDM(
      {required final List<DepositMoneyModel> places}) = _$_PlacesModelDM;

  factory _PlacesModelDM.fromJson(Map<String, dynamic> json) =
      _$_PlacesModelDM.fromJson;

  @override
  List<DepositMoneyModel> get places;
  @override
  @JsonKey(ignore: true)
  _$$_PlacesModelDMCopyWith<_$_PlacesModelDM> get copyWith =>
      throw _privateConstructorUsedError;
}

PlacesModelCW _$PlacesModelCWFromJson(Map<String, dynamic> json) {
  return _PlacesModelCW.fromJson(json);
}

/// @nodoc
mixin _$PlacesModelCW {
  List<CashWithdrawalModel> get places => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlacesModelCWCopyWith<PlacesModelCW> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesModelCWCopyWith<$Res> {
  factory $PlacesModelCWCopyWith(
          PlacesModelCW value, $Res Function(PlacesModelCW) then) =
      _$PlacesModelCWCopyWithImpl<$Res, PlacesModelCW>;
  @useResult
  $Res call({List<CashWithdrawalModel> places});
}

/// @nodoc
class _$PlacesModelCWCopyWithImpl<$Res, $Val extends PlacesModelCW>
    implements $PlacesModelCWCopyWith<$Res> {
  _$PlacesModelCWCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
  }) {
    return _then(_value.copyWith(
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<CashWithdrawalModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlacesModelCWCopyWith<$Res>
    implements $PlacesModelCWCopyWith<$Res> {
  factory _$$_PlacesModelCWCopyWith(
          _$_PlacesModelCW value, $Res Function(_$_PlacesModelCW) then) =
      __$$_PlacesModelCWCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CashWithdrawalModel> places});
}

/// @nodoc
class __$$_PlacesModelCWCopyWithImpl<$Res>
    extends _$PlacesModelCWCopyWithImpl<$Res, _$_PlacesModelCW>
    implements _$$_PlacesModelCWCopyWith<$Res> {
  __$$_PlacesModelCWCopyWithImpl(
      _$_PlacesModelCW _value, $Res Function(_$_PlacesModelCW) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
  }) {
    return _then(_$_PlacesModelCW(
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<CashWithdrawalModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlacesModelCW implements _PlacesModelCW {
  const _$_PlacesModelCW({required final List<CashWithdrawalModel> places})
      : _places = places;

  factory _$_PlacesModelCW.fromJson(Map<String, dynamic> json) =>
      _$$_PlacesModelCWFromJson(json);

  final List<CashWithdrawalModel> _places;
  @override
  List<CashWithdrawalModel> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  String toString() {
    return 'PlacesModelCW(places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlacesModelCW &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlacesModelCWCopyWith<_$_PlacesModelCW> get copyWith =>
      __$$_PlacesModelCWCopyWithImpl<_$_PlacesModelCW>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlacesModelCWToJson(
      this,
    );
  }
}

abstract class _PlacesModelCW implements PlacesModelCW {
  const factory _PlacesModelCW(
      {required final List<CashWithdrawalModel> places}) = _$_PlacesModelCW;

  factory _PlacesModelCW.fromJson(Map<String, dynamic> json) =
      _$_PlacesModelCW.fromJson;

  @override
  List<CashWithdrawalModel> get places;
  @override
  @JsonKey(ignore: true)
  _$$_PlacesModelCWCopyWith<_$_PlacesModelCW> get copyWith =>
      throw _privateConstructorUsedError;
}

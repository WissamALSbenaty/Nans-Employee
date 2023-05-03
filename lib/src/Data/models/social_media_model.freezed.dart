// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'social_media_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocialMediaModel _$SocialMediaModelFromJson(Map<String, dynamic> json) {
  return _SocialMediaModel.fromJson(json);
}

/// @nodoc
mixin _$SocialMediaModel {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get whatsapp => throw _privateConstructorUsedError;
  String get instagram => throw _privateConstructorUsedError;
  String get facebook => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialMediaModelCopyWith<SocialMediaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialMediaModelCopyWith<$Res> {
  factory $SocialMediaModelCopyWith(
          SocialMediaModel value, $Res Function(SocialMediaModel) then) =
      _$SocialMediaModelCopyWithImpl<$Res, SocialMediaModel>;
  @useResult
  $Res call(
      {String phoneNumber, String whatsapp, String instagram, String facebook});
}

/// @nodoc
class _$SocialMediaModelCopyWithImpl<$Res, $Val extends SocialMediaModel>
    implements $SocialMediaModelCopyWith<$Res> {
  _$SocialMediaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? whatsapp = null,
    Object? instagram = null,
    Object? facebook = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      whatsapp: null == whatsapp
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String,
      instagram: null == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String,
      facebook: null == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SocialMediaModelCopyWith<$Res>
    implements $SocialMediaModelCopyWith<$Res> {
  factory _$$_SocialMediaModelCopyWith(
          _$_SocialMediaModel value, $Res Function(_$_SocialMediaModel) then) =
      __$$_SocialMediaModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phoneNumber, String whatsapp, String instagram, String facebook});
}

/// @nodoc
class __$$_SocialMediaModelCopyWithImpl<$Res>
    extends _$SocialMediaModelCopyWithImpl<$Res, _$_SocialMediaModel>
    implements _$$_SocialMediaModelCopyWith<$Res> {
  __$$_SocialMediaModelCopyWithImpl(
      _$_SocialMediaModel _value, $Res Function(_$_SocialMediaModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? whatsapp = null,
    Object? instagram = null,
    Object? facebook = null,
  }) {
    return _then(_$_SocialMediaModel(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      whatsapp: null == whatsapp
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String,
      instagram: null == instagram
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String,
      facebook: null == facebook
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SocialMediaModel implements _SocialMediaModel {
  _$_SocialMediaModel(
      {required this.phoneNumber,
      required this.whatsapp,
      required this.instagram,
      required this.facebook});

  factory _$_SocialMediaModel.fromJson(Map<String, dynamic> json) =>
      _$$_SocialMediaModelFromJson(json);

  @override
  final String phoneNumber;
  @override
  final String whatsapp;
  @override
  final String instagram;
  @override
  final String facebook;

  @override
  String toString() {
    return 'SocialMediaModel(phoneNumber: $phoneNumber, whatsapp: $whatsapp, instagram: $instagram, facebook: $facebook)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocialMediaModel &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.whatsapp, whatsapp) ||
                other.whatsapp == whatsapp) &&
            (identical(other.instagram, instagram) ||
                other.instagram == instagram) &&
            (identical(other.facebook, facebook) ||
                other.facebook == facebook));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneNumber, whatsapp, instagram, facebook);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SocialMediaModelCopyWith<_$_SocialMediaModel> get copyWith =>
      __$$_SocialMediaModelCopyWithImpl<_$_SocialMediaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocialMediaModelToJson(
      this,
    );
  }
}

abstract class _SocialMediaModel implements SocialMediaModel {
  factory _SocialMediaModel(
      {required final String phoneNumber,
      required final String whatsapp,
      required final String instagram,
      required final String facebook}) = _$_SocialMediaModel;

  factory _SocialMediaModel.fromJson(Map<String, dynamic> json) =
      _$_SocialMediaModel.fromJson;

  @override
  String get phoneNumber;
  @override
  String get whatsapp;
  @override
  String get instagram;
  @override
  String get facebook;
  @override
  @JsonKey(ignore: true)
  _$$_SocialMediaModelCopyWith<_$_SocialMediaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

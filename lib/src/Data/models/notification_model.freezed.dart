// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'titleEn')
  String get englishTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'bodyEn')
  String get englishBody => throw _privateConstructorUsedError;
  @JsonKey(name: 'titleAr')
  String get arabicTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'bodyAr')
  String get arabicBody => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdOn', fromJson: DateTime.parse)
  DateTime get notificationDate => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'titleEn')
          String englishTitle,
      @JsonKey(name: 'bodyEn')
          String englishBody,
      @JsonKey(name: 'titleAr')
          String arabicTitle,
      @JsonKey(name: 'bodyAr')
          String arabicBody,
      @JsonKey(name: 'createdOn', fromJson: DateTime.parse)
          DateTime notificationDate,
      String data});
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? englishTitle = null,
    Object? englishBody = null,
    Object? arabicTitle = null,
    Object? arabicBody = null,
    Object? notificationDate = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      englishTitle: null == englishTitle
          ? _value.englishTitle
          : englishTitle // ignore: cast_nullable_to_non_nullable
              as String,
      englishBody: null == englishBody
          ? _value.englishBody
          : englishBody // ignore: cast_nullable_to_non_nullable
              as String,
      arabicTitle: null == arabicTitle
          ? _value.arabicTitle
          : arabicTitle // ignore: cast_nullable_to_non_nullable
              as String,
      arabicBody: null == arabicBody
          ? _value.arabicBody
          : arabicBody // ignore: cast_nullable_to_non_nullable
              as String,
      notificationDate: null == notificationDate
          ? _value.notificationDate
          : notificationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationModelCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$_NotificationModelCopyWith(_$_NotificationModel value,
          $Res Function(_$_NotificationModel) then) =
      __$$_NotificationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'titleEn')
          String englishTitle,
      @JsonKey(name: 'bodyEn')
          String englishBody,
      @JsonKey(name: 'titleAr')
          String arabicTitle,
      @JsonKey(name: 'bodyAr')
          String arabicBody,
      @JsonKey(name: 'createdOn', fromJson: DateTime.parse)
          DateTime notificationDate,
      String data});
}

/// @nodoc
class __$$_NotificationModelCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$_NotificationModel>
    implements _$$_NotificationModelCopyWith<$Res> {
  __$$_NotificationModelCopyWithImpl(
      _$_NotificationModel _value, $Res Function(_$_NotificationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? englishTitle = null,
    Object? englishBody = null,
    Object? arabicTitle = null,
    Object? arabicBody = null,
    Object? notificationDate = null,
    Object? data = null,
  }) {
    return _then(_$_NotificationModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      englishTitle: null == englishTitle
          ? _value.englishTitle
          : englishTitle // ignore: cast_nullable_to_non_nullable
              as String,
      englishBody: null == englishBody
          ? _value.englishBody
          : englishBody // ignore: cast_nullable_to_non_nullable
              as String,
      arabicTitle: null == arabicTitle
          ? _value.arabicTitle
          : arabicTitle // ignore: cast_nullable_to_non_nullable
              as String,
      arabicBody: null == arabicBody
          ? _value.arabicBody
          : arabicBody // ignore: cast_nullable_to_non_nullable
              as String,
      notificationDate: null == notificationDate
          ? _value.notificationDate
          : notificationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationModel extends _NotificationModel {
  _$_NotificationModel(
      {required this.id,
      @JsonKey(name: 'titleEn')
          required this.englishTitle,
      @JsonKey(name: 'bodyEn')
          required this.englishBody,
      @JsonKey(name: 'titleAr')
          required this.arabicTitle,
      @JsonKey(name: 'bodyAr')
          required this.arabicBody,
      @JsonKey(name: 'createdOn', fromJson: DateTime.parse)
          required this.notificationDate,
      required this.data})
      : super._();

  factory _$_NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'titleEn')
  final String englishTitle;
  @override
  @JsonKey(name: 'bodyEn')
  final String englishBody;
  @override
  @JsonKey(name: 'titleAr')
  final String arabicTitle;
  @override
  @JsonKey(name: 'bodyAr')
  final String arabicBody;
  @override
  @JsonKey(name: 'createdOn', fromJson: DateTime.parse)
  final DateTime notificationDate;
  @override
  final String data;

  @override
  String toString() {
    return 'NotificationModel(id: $id, englishTitle: $englishTitle, englishBody: $englishBody, arabicTitle: $arabicTitle, arabicBody: $arabicBody, notificationDate: $notificationDate, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.englishTitle, englishTitle) ||
                other.englishTitle == englishTitle) &&
            (identical(other.englishBody, englishBody) ||
                other.englishBody == englishBody) &&
            (identical(other.arabicTitle, arabicTitle) ||
                other.arabicTitle == arabicTitle) &&
            (identical(other.arabicBody, arabicBody) ||
                other.arabicBody == arabicBody) &&
            (identical(other.notificationDate, notificationDate) ||
                other.notificationDate == notificationDate) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, englishTitle, englishBody,
      arabicTitle, arabicBody, notificationDate, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationModelCopyWith<_$_NotificationModel> get copyWith =>
      __$$_NotificationModelCopyWithImpl<_$_NotificationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationModelToJson(
      this,
    );
  }
}

abstract class _NotificationModel extends NotificationModel {
  factory _NotificationModel(
      {required final int id,
      @JsonKey(name: 'titleEn')
          required final String englishTitle,
      @JsonKey(name: 'bodyEn')
          required final String englishBody,
      @JsonKey(name: 'titleAr')
          required final String arabicTitle,
      @JsonKey(name: 'bodyAr')
          required final String arabicBody,
      @JsonKey(name: 'createdOn', fromJson: DateTime.parse)
          required final DateTime notificationDate,
      required final String data}) = _$_NotificationModel;
  _NotificationModel._() : super._();

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$_NotificationModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'titleEn')
  String get englishTitle;
  @override
  @JsonKey(name: 'bodyEn')
  String get englishBody;
  @override
  @JsonKey(name: 'titleAr')
  String get arabicTitle;
  @override
  @JsonKey(name: 'bodyAr')
  String get arabicBody;
  @override
  @JsonKey(name: 'createdOn', fromJson: DateTime.parse)
  DateTime get notificationDate;
  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationModelCopyWith<_$_NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

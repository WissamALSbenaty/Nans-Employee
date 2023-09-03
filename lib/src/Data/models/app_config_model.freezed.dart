// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppConfigModel _$AppConfigModelFromJson(Map<String, dynamic> json) {
  return _AppConfigModel.fromJson(json);
}

/// @nodoc
mixin _$AppConfigModel {
  AppSettingsModel get mobileSettings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppConfigModelCopyWith<AppConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigModelCopyWith<$Res> {
  factory $AppConfigModelCopyWith(
          AppConfigModel value, $Res Function(AppConfigModel) then) =
      _$AppConfigModelCopyWithImpl<$Res, AppConfigModel>;
  @useResult
  $Res call({AppSettingsModel mobileSettings});

  $AppSettingsModelCopyWith<$Res> get mobileSettings;
}

/// @nodoc
class _$AppConfigModelCopyWithImpl<$Res, $Val extends AppConfigModel>
    implements $AppConfigModelCopyWith<$Res> {
  _$AppConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileSettings = null,
  }) {
    return _then(_value.copyWith(
      mobileSettings: null == mobileSettings
          ? _value.mobileSettings
          : mobileSettings // ignore: cast_nullable_to_non_nullable
              as AppSettingsModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppSettingsModelCopyWith<$Res> get mobileSettings {
    return $AppSettingsModelCopyWith<$Res>(_value.mobileSettings, (value) {
      return _then(_value.copyWith(mobileSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppConfigModelCopyWith<$Res>
    implements $AppConfigModelCopyWith<$Res> {
  factory _$$_AppConfigModelCopyWith(
          _$_AppConfigModel value, $Res Function(_$_AppConfigModel) then) =
      __$$_AppConfigModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppSettingsModel mobileSettings});

  @override
  $AppSettingsModelCopyWith<$Res> get mobileSettings;
}

/// @nodoc
class __$$_AppConfigModelCopyWithImpl<$Res>
    extends _$AppConfigModelCopyWithImpl<$Res, _$_AppConfigModel>
    implements _$$_AppConfigModelCopyWith<$Res> {
  __$$_AppConfigModelCopyWithImpl(
      _$_AppConfigModel _value, $Res Function(_$_AppConfigModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileSettings = null,
  }) {
    return _then(_$_AppConfigModel(
      mobileSettings: null == mobileSettings
          ? _value.mobileSettings
          : mobileSettings // ignore: cast_nullable_to_non_nullable
              as AppSettingsModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppConfigModel implements _AppConfigModel {
  _$_AppConfigModel({required this.mobileSettings});

  factory _$_AppConfigModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppConfigModelFromJson(json);

  @override
  final AppSettingsModel mobileSettings;

  @override
  String toString() {
    return 'AppConfigModel(mobileSettings: $mobileSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppConfigModel &&
            (identical(other.mobileSettings, mobileSettings) ||
                other.mobileSettings == mobileSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mobileSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppConfigModelCopyWith<_$_AppConfigModel> get copyWith =>
      __$$_AppConfigModelCopyWithImpl<_$_AppConfigModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppConfigModelToJson(
      this,
    );
  }
}

abstract class _AppConfigModel implements AppConfigModel {
  factory _AppConfigModel({required final AppSettingsModel mobileSettings}) =
      _$_AppConfigModel;

  factory _AppConfigModel.fromJson(Map<String, dynamic> json) =
      _$_AppConfigModel.fromJson;

  @override
  AppSettingsModel get mobileSettings;
  @override
  @JsonKey(ignore: true)
  _$$_AppConfigModelCopyWith<_$_AppConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

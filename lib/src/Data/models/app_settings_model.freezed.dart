// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppSettingsModel _$AppSettingsModelFromJson(Map<String, dynamic> json) {
  return _AppSettingsModel.fromJson(json);
}

/// @nodoc
mixin _$AppSettingsModel {
  @JsonKey(name: 'androidMinVersion')
  String get androidMinimumVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'androidLatestVersion')
  String get androidCurrentVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'iosMinVersion')
  String get iosMinimumVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'iosLatestVersion')
  String get iosCurrentVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppSettingsModelCopyWith<AppSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsModelCopyWith<$Res> {
  factory $AppSettingsModelCopyWith(
          AppSettingsModel value, $Res Function(AppSettingsModel) then) =
      _$AppSettingsModelCopyWithImpl<$Res, AppSettingsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'androidMinVersion') String androidMinimumVersion,
      @JsonKey(name: 'androidLatestVersion') String androidCurrentVersion,
      @JsonKey(name: 'iosMinVersion') String iosMinimumVersion,
      @JsonKey(name: 'iosLatestVersion') String iosCurrentVersion});
}

/// @nodoc
class _$AppSettingsModelCopyWithImpl<$Res, $Val extends AppSettingsModel>
    implements $AppSettingsModelCopyWith<$Res> {
  _$AppSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? androidMinimumVersion = null,
    Object? androidCurrentVersion = null,
    Object? iosMinimumVersion = null,
    Object? iosCurrentVersion = null,
  }) {
    return _then(_value.copyWith(
      androidMinimumVersion: null == androidMinimumVersion
          ? _value.androidMinimumVersion
          : androidMinimumVersion // ignore: cast_nullable_to_non_nullable
              as String,
      androidCurrentVersion: null == androidCurrentVersion
          ? _value.androidCurrentVersion
          : androidCurrentVersion // ignore: cast_nullable_to_non_nullable
              as String,
      iosMinimumVersion: null == iosMinimumVersion
          ? _value.iosMinimumVersion
          : iosMinimumVersion // ignore: cast_nullable_to_non_nullable
              as String,
      iosCurrentVersion: null == iosCurrentVersion
          ? _value.iosCurrentVersion
          : iosCurrentVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppSettingsModelCopyWith<$Res>
    implements $AppSettingsModelCopyWith<$Res> {
  factory _$$_AppSettingsModelCopyWith(
          _$_AppSettingsModel value, $Res Function(_$_AppSettingsModel) then) =
      __$$_AppSettingsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'androidMinVersion') String androidMinimumVersion,
      @JsonKey(name: 'androidLatestVersion') String androidCurrentVersion,
      @JsonKey(name: 'iosMinVersion') String iosMinimumVersion,
      @JsonKey(name: 'iosLatestVersion') String iosCurrentVersion});
}

/// @nodoc
class __$$_AppSettingsModelCopyWithImpl<$Res>
    extends _$AppSettingsModelCopyWithImpl<$Res, _$_AppSettingsModel>
    implements _$$_AppSettingsModelCopyWith<$Res> {
  __$$_AppSettingsModelCopyWithImpl(
      _$_AppSettingsModel _value, $Res Function(_$_AppSettingsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? androidMinimumVersion = null,
    Object? androidCurrentVersion = null,
    Object? iosMinimumVersion = null,
    Object? iosCurrentVersion = null,
  }) {
    return _then(_$_AppSettingsModel(
      androidMinimumVersion: null == androidMinimumVersion
          ? _value.androidMinimumVersion
          : androidMinimumVersion // ignore: cast_nullable_to_non_nullable
              as String,
      androidCurrentVersion: null == androidCurrentVersion
          ? _value.androidCurrentVersion
          : androidCurrentVersion // ignore: cast_nullable_to_non_nullable
              as String,
      iosMinimumVersion: null == iosMinimumVersion
          ? _value.iosMinimumVersion
          : iosMinimumVersion // ignore: cast_nullable_to_non_nullable
              as String,
      iosCurrentVersion: null == iosCurrentVersion
          ? _value.iosCurrentVersion
          : iosCurrentVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppSettingsModel extends _AppSettingsModel {
  _$_AppSettingsModel(
      {@JsonKey(name: 'androidMinVersion')
          required this.androidMinimumVersion,
      @JsonKey(name: 'androidLatestVersion')
          required this.androidCurrentVersion,
      @JsonKey(name: 'iosMinVersion')
          required this.iosMinimumVersion,
      @JsonKey(name: 'iosLatestVersion')
          required this.iosCurrentVersion})
      : super._();

  factory _$_AppSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppSettingsModelFromJson(json);

  @override
  @JsonKey(name: 'androidMinVersion')
  final String androidMinimumVersion;
  @override
  @JsonKey(name: 'androidLatestVersion')
  final String androidCurrentVersion;
  @override
  @JsonKey(name: 'iosMinVersion')
  final String iosMinimumVersion;
  @override
  @JsonKey(name: 'iosLatestVersion')
  final String iosCurrentVersion;

  @override
  String toString() {
    return 'AppSettingsModel(androidMinimumVersion: $androidMinimumVersion, androidCurrentVersion: $androidCurrentVersion, iosMinimumVersion: $iosMinimumVersion, iosCurrentVersion: $iosCurrentVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppSettingsModel &&
            (identical(other.androidMinimumVersion, androidMinimumVersion) ||
                other.androidMinimumVersion == androidMinimumVersion) &&
            (identical(other.androidCurrentVersion, androidCurrentVersion) ||
                other.androidCurrentVersion == androidCurrentVersion) &&
            (identical(other.iosMinimumVersion, iosMinimumVersion) ||
                other.iosMinimumVersion == iosMinimumVersion) &&
            (identical(other.iosCurrentVersion, iosCurrentVersion) ||
                other.iosCurrentVersion == iosCurrentVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, androidMinimumVersion,
      androidCurrentVersion, iosMinimumVersion, iosCurrentVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppSettingsModelCopyWith<_$_AppSettingsModel> get copyWith =>
      __$$_AppSettingsModelCopyWithImpl<_$_AppSettingsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppSettingsModelToJson(
      this,
    );
  }
}

abstract class _AppSettingsModel extends AppSettingsModel {
  factory _AppSettingsModel(
      {@JsonKey(name: 'androidMinVersion')
          required final String androidMinimumVersion,
      @JsonKey(name: 'androidLatestVersion')
          required final String androidCurrentVersion,
      @JsonKey(name: 'iosMinVersion')
          required final String iosMinimumVersion,
      @JsonKey(name: 'iosLatestVersion')
          required final String iosCurrentVersion}) = _$_AppSettingsModel;
  _AppSettingsModel._() : super._();

  factory _AppSettingsModel.fromJson(Map<String, dynamic> json) =
      _$_AppSettingsModel.fromJson;

  @override
  @JsonKey(name: 'androidMinVersion')
  String get androidMinimumVersion;
  @override
  @JsonKey(name: 'androidLatestVersion')
  String get androidCurrentVersion;
  @override
  @JsonKey(name: 'iosMinVersion')
  String get iosMinimumVersion;
  @override
  @JsonKey(name: 'iosLatestVersion')
  String get iosCurrentVersion;
  @override
  @JsonKey(ignore: true)
  _$$_AppSettingsModelCopyWith<_$_AppSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

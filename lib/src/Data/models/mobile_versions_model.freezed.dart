// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mobile_versions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MobileVersionsModel _$MobileVersionsModelFromJson(Map<String, dynamic> json) {
  return _MobileVersionModel.fromJson(json);
}

/// @nodoc
mixin _$MobileVersionsModel {
  @JsonKey(name: 'androidMinVersion')
  int get androidMinimumVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'androidLatestVersion')
  int get androidCurrentVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'iosMinVersion')
  String get iosMinimumVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'iosLatestVersion')
  String get iosCurrentVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MobileVersionsModelCopyWith<MobileVersionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileVersionsModelCopyWith<$Res> {
  factory $MobileVersionsModelCopyWith(
          MobileVersionsModel value, $Res Function(MobileVersionsModel) then) =
      _$MobileVersionsModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'androidMinVersion') int androidMinimumVersion,
      @JsonKey(name: 'androidLatestVersion') int androidCurrentVersion,
      @JsonKey(name: 'iosMinVersion') String iosMinimumVersion,
      @JsonKey(name: 'iosLatestVersion') String iosCurrentVersion});
}

/// @nodoc
class _$MobileVersionsModelCopyWithImpl<$Res>
    implements $MobileVersionsModelCopyWith<$Res> {
  _$MobileVersionsModelCopyWithImpl(this._value, this._then);

  final MobileVersionsModel _value;
  // ignore: unused_field
  final $Res Function(MobileVersionsModel) _then;

  @override
  $Res call({
    Object? androidMinimumVersion = freezed,
    Object? androidCurrentVersion = freezed,
    Object? iosMinimumVersion = freezed,
    Object? iosCurrentVersion = freezed,
  }) {
    return _then(_value.copyWith(
      androidMinimumVersion: androidMinimumVersion == freezed
          ? _value.androidMinimumVersion
          : androidMinimumVersion // ignore: cast_nullable_to_non_nullable
              as int,
      androidCurrentVersion: androidCurrentVersion == freezed
          ? _value.androidCurrentVersion
          : androidCurrentVersion // ignore: cast_nullable_to_non_nullable
              as int,
      iosMinimumVersion: iosMinimumVersion == freezed
          ? _value.iosMinimumVersion
          : iosMinimumVersion // ignore: cast_nullable_to_non_nullable
              as String,
      iosCurrentVersion: iosCurrentVersion == freezed
          ? _value.iosCurrentVersion
          : iosCurrentVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MobileVersionModelCopyWith<$Res>
    implements $MobileVersionsModelCopyWith<$Res> {
  factory _$$_MobileVersionModelCopyWith(_$_MobileVersionModel value,
          $Res Function(_$_MobileVersionModel) then) =
      __$$_MobileVersionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'androidMinVersion') int androidMinimumVersion,
      @JsonKey(name: 'androidLatestVersion') int androidCurrentVersion,
      @JsonKey(name: 'iosMinVersion') String iosMinimumVersion,
      @JsonKey(name: 'iosLatestVersion') String iosCurrentVersion});
}

/// @nodoc
class __$$_MobileVersionModelCopyWithImpl<$Res>
    extends _$MobileVersionsModelCopyWithImpl<$Res>
    implements _$$_MobileVersionModelCopyWith<$Res> {
  __$$_MobileVersionModelCopyWithImpl(
      _$_MobileVersionModel _value, $Res Function(_$_MobileVersionModel) _then)
      : super(_value, (v) => _then(v as _$_MobileVersionModel));

  @override
  _$_MobileVersionModel get _value => super._value as _$_MobileVersionModel;

  @override
  $Res call({
    Object? androidMinimumVersion = freezed,
    Object? androidCurrentVersion = freezed,
    Object? iosMinimumVersion = freezed,
    Object? iosCurrentVersion = freezed,
  }) {
    return _then(_$_MobileVersionModel(
      androidMinimumVersion: androidMinimumVersion == freezed
          ? _value.androidMinimumVersion
          : androidMinimumVersion // ignore: cast_nullable_to_non_nullable
              as int,
      androidCurrentVersion: androidCurrentVersion == freezed
          ? _value.androidCurrentVersion
          : androidCurrentVersion // ignore: cast_nullable_to_non_nullable
              as int,
      iosMinimumVersion: iosMinimumVersion == freezed
          ? _value.iosMinimumVersion
          : iosMinimumVersion // ignore: cast_nullable_to_non_nullable
              as String,
      iosCurrentVersion: iosCurrentVersion == freezed
          ? _value.iosCurrentVersion
          : iosCurrentVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MobileVersionModel extends _MobileVersionModel {
  _$_MobileVersionModel(
      {@JsonKey(name: 'androidMinVersion')
          required this.androidMinimumVersion,
      @JsonKey(name: 'androidLatestVersion')
          required this.androidCurrentVersion,
      @JsonKey(name: 'iosMinVersion')
          required this.iosMinimumVersion,
      @JsonKey(name: 'iosLatestVersion')
          required this.iosCurrentVersion})
      : super._();

  factory _$_MobileVersionModel.fromJson(Map<String, dynamic> json) =>
      _$$_MobileVersionModelFromJson(json);

  @override
  @JsonKey(name: 'androidMinVersion')
  final int androidMinimumVersion;
  @override
  @JsonKey(name: 'androidLatestVersion')
  final int androidCurrentVersion;
  @override
  @JsonKey(name: 'iosMinVersion')
  final String iosMinimumVersion;
  @override
  @JsonKey(name: 'iosLatestVersion')
  final String iosCurrentVersion;

  @override
  String toString() {
    return 'MobileVersionsModel(androidMinimumVersion: $androidMinimumVersion, androidCurrentVersion: $androidCurrentVersion, iosMinimumVersion: $iosMinimumVersion, iosCurrentVersion: $iosCurrentVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MobileVersionModel &&
            const DeepCollectionEquality()
                .equals(other.androidMinimumVersion, androidMinimumVersion) &&
            const DeepCollectionEquality()
                .equals(other.androidCurrentVersion, androidCurrentVersion) &&
            const DeepCollectionEquality()
                .equals(other.iosMinimumVersion, iosMinimumVersion) &&
            const DeepCollectionEquality()
                .equals(other.iosCurrentVersion, iosCurrentVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(androidMinimumVersion),
      const DeepCollectionEquality().hash(androidCurrentVersion),
      const DeepCollectionEquality().hash(iosMinimumVersion),
      const DeepCollectionEquality().hash(iosCurrentVersion));

  @JsonKey(ignore: true)
  @override
  _$$_MobileVersionModelCopyWith<_$_MobileVersionModel> get copyWith =>
      __$$_MobileVersionModelCopyWithImpl<_$_MobileVersionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MobileVersionModelToJson(
      this,
    );
  }
}

abstract class _MobileVersionModel extends MobileVersionsModel {
  factory _MobileVersionModel(
      {@JsonKey(name: 'androidMinVersion')
          required final int androidMinimumVersion,
      @JsonKey(name: 'androidLatestVersion')
          required final int androidCurrentVersion,
      @JsonKey(name: 'iosMinVersion')
          required final String iosMinimumVersion,
      @JsonKey(name: 'iosLatestVersion')
          required final String iosCurrentVersion}) = _$_MobileVersionModel;
  _MobileVersionModel._() : super._();

  factory _MobileVersionModel.fromJson(Map<String, dynamic> json) =
      _$_MobileVersionModel.fromJson;

  @override
  @JsonKey(name: 'androidMinVersion')
  int get androidMinimumVersion;
  @override
  @JsonKey(name: 'androidLatestVersion')
  int get androidCurrentVersion;
  @override
  @JsonKey(name: 'iosMinVersion')
  String get iosMinimumVersion;
  @override
  @JsonKey(name: 'iosLatestVersion')
  String get iosCurrentVersion;
  @override
  @JsonKey(ignore: true)
  _$$_MobileVersionModelCopyWith<_$_MobileVersionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

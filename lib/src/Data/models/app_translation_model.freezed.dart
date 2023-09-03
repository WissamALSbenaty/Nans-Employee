// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_translation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppTranslationModel _$AppTranslationModelFromJson(Map<String, dynamic> json) {
  return _AppTranslationModel.fromJson(json);
}

/// @nodoc
mixin _$AppTranslationModel {
  Map<String, String> get translation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppTranslationModelCopyWith<AppTranslationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppTranslationModelCopyWith<$Res> {
  factory $AppTranslationModelCopyWith(
          AppTranslationModel value, $Res Function(AppTranslationModel) then) =
      _$AppTranslationModelCopyWithImpl<$Res, AppTranslationModel>;
  @useResult
  $Res call({Map<String, String> translation});
}

/// @nodoc
class _$AppTranslationModelCopyWithImpl<$Res, $Val extends AppTranslationModel>
    implements $AppTranslationModelCopyWith<$Res> {
  _$AppTranslationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translation = null,
  }) {
    return _then(_value.copyWith(
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppTranslationModelCopyWith<$Res>
    implements $AppTranslationModelCopyWith<$Res> {
  factory _$$_AppTranslationModelCopyWith(_$_AppTranslationModel value,
          $Res Function(_$_AppTranslationModel) then) =
      __$$_AppTranslationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String> translation});
}

/// @nodoc
class __$$_AppTranslationModelCopyWithImpl<$Res>
    extends _$AppTranslationModelCopyWithImpl<$Res, _$_AppTranslationModel>
    implements _$$_AppTranslationModelCopyWith<$Res> {
  __$$_AppTranslationModelCopyWithImpl(_$_AppTranslationModel _value,
      $Res Function(_$_AppTranslationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translation = null,
  }) {
    return _then(_$_AppTranslationModel(
      translation: null == translation
          ? _value._translation
          : translation // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppTranslationModel extends _AppTranslationModel {
  _$_AppTranslationModel({required final Map<String, String> translation})
      : _translation = translation,
        super._();

  factory _$_AppTranslationModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppTranslationModelFromJson(json);

  final Map<String, String> _translation;
  @override
  Map<String, String> get translation {
    if (_translation is EqualUnmodifiableMapView) return _translation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_translation);
  }

  @override
  String toString() {
    return 'AppTranslationModel(translation: $translation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppTranslationModel &&
            const DeepCollectionEquality()
                .equals(other._translation, _translation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_translation));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppTranslationModelCopyWith<_$_AppTranslationModel> get copyWith =>
      __$$_AppTranslationModelCopyWithImpl<_$_AppTranslationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppTranslationModelToJson(
      this,
    );
  }
}

abstract class _AppTranslationModel extends AppTranslationModel {
  factory _AppTranslationModel(
          {required final Map<String, String> translation}) =
      _$_AppTranslationModel;
  _AppTranslationModel._() : super._();

  factory _AppTranslationModel.fromJson(Map<String, dynamic> json) =
      _$_AppTranslationModel.fromJson;

  @override
  Map<String, String> get translation;
  @override
  @JsonKey(ignore: true)
  _$$_AppTranslationModelCopyWith<_$_AppTranslationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

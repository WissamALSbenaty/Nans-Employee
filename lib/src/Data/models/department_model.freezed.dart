// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DepartmentModel _$DepartmentModelFromJson(Map<String, dynamic> json) {
  return _DepartmentModel.fromJson(json);
}

/// @nodoc
mixin _$DepartmentModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartmentModelCopyWith<DepartmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentModelCopyWith<$Res> {
  factory $DepartmentModelCopyWith(
          DepartmentModel value, $Res Function(DepartmentModel) then) =
      _$DepartmentModelCopyWithImpl<$Res, DepartmentModel>;
  @useResult
  $Res call({String id, String title, String? imagePath});
}

/// @nodoc
class _$DepartmentModelCopyWithImpl<$Res, $Val extends DepartmentModel>
    implements $DepartmentModelCopyWith<$Res> {
  _$DepartmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imagePath = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DepartmentModelCopyWith<$Res>
    implements $DepartmentModelCopyWith<$Res> {
  factory _$$_DepartmentModelCopyWith(
          _$_DepartmentModel value, $Res Function(_$_DepartmentModel) then) =
      __$$_DepartmentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String? imagePath});
}

/// @nodoc
class __$$_DepartmentModelCopyWithImpl<$Res>
    extends _$DepartmentModelCopyWithImpl<$Res, _$_DepartmentModel>
    implements _$$_DepartmentModelCopyWith<$Res> {
  __$$_DepartmentModelCopyWithImpl(
      _$_DepartmentModel _value, $Res Function(_$_DepartmentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imagePath = freezed,
  }) {
    return _then(_$_DepartmentModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DepartmentModel implements _DepartmentModel {
  _$_DepartmentModel({required this.id, required this.title, this.imagePath});

  factory _$_DepartmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_DepartmentModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? imagePath;

  @override
  String toString() {
    return 'DepartmentModel(id: $id, title: $title, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DepartmentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DepartmentModelCopyWith<_$_DepartmentModel> get copyWith =>
      __$$_DepartmentModelCopyWithImpl<_$_DepartmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DepartmentModelToJson(
      this,
    );
  }
}

abstract class _DepartmentModel implements DepartmentModel {
  factory _DepartmentModel(
      {required final String id,
      required final String title,
      final String? imagePath}) = _$_DepartmentModel;

  factory _DepartmentModel.fromJson(Map<String, dynamic> json) =
      _$_DepartmentModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$_DepartmentModelCopyWith<_$_DepartmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

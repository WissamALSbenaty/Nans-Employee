// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'department_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DepartmentDetailsModel _$DepartmentDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _DepartmentDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$DepartmentDetailsModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  List<ServiceModel> get services => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartmentDetailsModelCopyWith<DepartmentDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentDetailsModelCopyWith<$Res> {
  factory $DepartmentDetailsModelCopyWith(DepartmentDetailsModel value,
          $Res Function(DepartmentDetailsModel) then) =
      _$DepartmentDetailsModelCopyWithImpl<$Res, DepartmentDetailsModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String? imagePath,
      List<ServiceModel> services});
}

/// @nodoc
class _$DepartmentDetailsModelCopyWithImpl<$Res,
        $Val extends DepartmentDetailsModel>
    implements $DepartmentDetailsModelCopyWith<$Res> {
  _$DepartmentDetailsModelCopyWithImpl(this._value, this._then);

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
    Object? services = null,
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
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DepartmentDetailsModelCopyWith<$Res>
    implements $DepartmentDetailsModelCopyWith<$Res> {
  factory _$$_DepartmentDetailsModelCopyWith(_$_DepartmentDetailsModel value,
          $Res Function(_$_DepartmentDetailsModel) then) =
      __$$_DepartmentDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String? imagePath,
      List<ServiceModel> services});
}

/// @nodoc
class __$$_DepartmentDetailsModelCopyWithImpl<$Res>
    extends _$DepartmentDetailsModelCopyWithImpl<$Res,
        _$_DepartmentDetailsModel>
    implements _$$_DepartmentDetailsModelCopyWith<$Res> {
  __$$_DepartmentDetailsModelCopyWithImpl(_$_DepartmentDetailsModel _value,
      $Res Function(_$_DepartmentDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imagePath = freezed,
    Object? services = null,
  }) {
    return _then(_$_DepartmentDetailsModel(
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
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DepartmentDetailsModel implements _DepartmentDetailsModel {
  _$_DepartmentDetailsModel(
      {required this.id,
      required this.title,
      this.imagePath,
      required final List<ServiceModel> services})
      : _services = services;

  factory _$_DepartmentDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_DepartmentDetailsModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? imagePath;
  final List<ServiceModel> _services;
  @override
  List<ServiceModel> get services {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'DepartmentDetailsModel(id: $id, title: $title, imagePath: $imagePath, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DepartmentDetailsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, imagePath,
      const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DepartmentDetailsModelCopyWith<_$_DepartmentDetailsModel> get copyWith =>
      __$$_DepartmentDetailsModelCopyWithImpl<_$_DepartmentDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DepartmentDetailsModelToJson(
      this,
    );
  }
}

abstract class _DepartmentDetailsModel implements DepartmentDetailsModel {
  factory _DepartmentDetailsModel(
      {required final String id,
      required final String title,
      final String? imagePath,
      required final List<ServiceModel> services}) = _$_DepartmentDetailsModel;

  factory _DepartmentDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_DepartmentDetailsModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get imagePath;
  @override
  List<ServiceModel> get services;
  @override
  @JsonKey(ignore: true)
  _$$_DepartmentDetailsModelCopyWith<_$_DepartmentDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

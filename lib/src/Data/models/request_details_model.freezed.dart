// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'request_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestDetailsModel _$RequestDetailsModelFromJson(Map<String, dynamic> json) {
  return _RequestDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$RequestDetailsModel {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestDetailsModelCopyWith<RequestDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDetailsModelCopyWith<$Res> {
  factory $RequestDetailsModelCopyWith(
          RequestDetailsModel value, $Res Function(RequestDetailsModel) then) =
      _$RequestDetailsModelCopyWithImpl<$Res, RequestDetailsModel>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$RequestDetailsModelCopyWithImpl<$Res, $Val extends RequestDetailsModel>
    implements $RequestDetailsModelCopyWith<$Res> {
  _$RequestDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestDetailsModelCopyWith<$Res>
    implements $RequestDetailsModelCopyWith<$Res> {
  factory _$$_RequestDetailsModelCopyWith(_$_RequestDetailsModel value,
          $Res Function(_$_RequestDetailsModel) then) =
      __$$_RequestDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_RequestDetailsModelCopyWithImpl<$Res>
    extends _$RequestDetailsModelCopyWithImpl<$Res, _$_RequestDetailsModel>
    implements _$$_RequestDetailsModelCopyWith<$Res> {
  __$$_RequestDetailsModelCopyWithImpl(_$_RequestDetailsModel _value,
      $Res Function(_$_RequestDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_RequestDetailsModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestDetailsModel implements _RequestDetailsModel {
  _$_RequestDetailsModel({required this.id});

  factory _$_RequestDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_RequestDetailsModelFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'RequestDetailsModel(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestDetailsModel &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestDetailsModelCopyWith<_$_RequestDetailsModel> get copyWith =>
      __$$_RequestDetailsModelCopyWithImpl<_$_RequestDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestDetailsModelToJson(
      this,
    );
  }
}

abstract class _RequestDetailsModel implements RequestDetailsModel {
  factory _RequestDetailsModel({required final String id}) =
      _$_RequestDetailsModel;

  factory _RequestDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_RequestDetailsModel.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_RequestDetailsModelCopyWith<_$_RequestDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

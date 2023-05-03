// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'key_value_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KeyValueModel _$KeyValueModelFromJson(Map<String, dynamic> json) {
  return _KeyValueModel.fromJson(json);
}

/// @nodoc
mixin _$KeyValueModel {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeyValueModelCopyWith<KeyValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyValueModelCopyWith<$Res> {
  factory $KeyValueModelCopyWith(
          KeyValueModel value, $Res Function(KeyValueModel) then) =
      _$KeyValueModelCopyWithImpl<$Res, KeyValueModel>;
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class _$KeyValueModelCopyWithImpl<$Res, $Val extends KeyValueModel>
    implements $KeyValueModelCopyWith<$Res> {
  _$KeyValueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KeyValueModelCopyWith<$Res>
    implements $KeyValueModelCopyWith<$Res> {
  factory _$$_KeyValueModelCopyWith(
          _$_KeyValueModel value, $Res Function(_$_KeyValueModel) then) =
      __$$_KeyValueModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class __$$_KeyValueModelCopyWithImpl<$Res>
    extends _$KeyValueModelCopyWithImpl<$Res, _$_KeyValueModel>
    implements _$$_KeyValueModelCopyWith<$Res> {
  __$$_KeyValueModelCopyWithImpl(
      _$_KeyValueModel _value, $Res Function(_$_KeyValueModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$_KeyValueModel(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KeyValueModel implements _KeyValueModel {
  _$_KeyValueModel({required this.key, required this.value});

  factory _$_KeyValueModel.fromJson(Map<String, dynamic> json) =>
      _$$_KeyValueModelFromJson(json);

  @override
  final String key;
  @override
  final String value;

  @override
  String toString() {
    return 'KeyValueModel(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KeyValueModel &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KeyValueModelCopyWith<_$_KeyValueModel> get copyWith =>
      __$$_KeyValueModelCopyWithImpl<_$_KeyValueModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KeyValueModelToJson(
      this,
    );
  }
}

abstract class _KeyValueModel implements KeyValueModel {
  factory _KeyValueModel(
      {required final String key,
      required final String value}) = _$_KeyValueModel;

  factory _KeyValueModel.fromJson(Map<String, dynamic> json) =
      _$_KeyValueModel.fromJson;

  @override
  String get key;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_KeyValueModelCopyWith<_$_KeyValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

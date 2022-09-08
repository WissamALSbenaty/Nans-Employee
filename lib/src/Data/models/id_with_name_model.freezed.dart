// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'id_with_name_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IdWithNameModel _$IdWithNameModelFromJson(Map<String, dynamic> json) {
  return _IdWithNameModel.fromJson(json);
}

/// @nodoc
mixin _$IdWithNameModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdWithNameModelCopyWith<IdWithNameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdWithNameModelCopyWith<$Res> {
  factory $IdWithNameModelCopyWith(
          IdWithNameModel value, $Res Function(IdWithNameModel) then) =
      _$IdWithNameModelCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$IdWithNameModelCopyWithImpl<$Res>
    implements $IdWithNameModelCopyWith<$Res> {
  _$IdWithNameModelCopyWithImpl(this._value, this._then);

  final IdWithNameModel _value;
  // ignore: unused_field
  final $Res Function(IdWithNameModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_IdWithNameModelCopyWith<$Res>
    implements $IdWithNameModelCopyWith<$Res> {
  factory _$$_IdWithNameModelCopyWith(
          _$_IdWithNameModel value, $Res Function(_$_IdWithNameModel) then) =
      __$$_IdWithNameModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$$_IdWithNameModelCopyWithImpl<$Res>
    extends _$IdWithNameModelCopyWithImpl<$Res>
    implements _$$_IdWithNameModelCopyWith<$Res> {
  __$$_IdWithNameModelCopyWithImpl(
      _$_IdWithNameModel _value, $Res Function(_$_IdWithNameModel) _then)
      : super(_value, (v) => _then(v as _$_IdWithNameModel));

  @override
  _$_IdWithNameModel get _value => super._value as _$_IdWithNameModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_IdWithNameModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IdWithNameModel extends _IdWithNameModel {
  _$_IdWithNameModel({required this.id, required this.name}) : super._();

  factory _$_IdWithNameModel.fromJson(Map<String, dynamic> json) =>
      _$$_IdWithNameModelFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'IdWithNameModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdWithNameModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_IdWithNameModelCopyWith<_$_IdWithNameModel> get copyWith =>
      __$$_IdWithNameModelCopyWithImpl<_$_IdWithNameModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IdWithNameModelToJson(
      this,
    );
  }
}

abstract class _IdWithNameModel extends IdWithNameModel {
  factory _IdWithNameModel(
      {required final int id, required final String name}) = _$_IdWithNameModel;
  _IdWithNameModel._() : super._();

  factory _IdWithNameModel.fromJson(Map<String, dynamic> json) =
      _$_IdWithNameModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_IdWithNameModelCopyWith<_$_IdWithNameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

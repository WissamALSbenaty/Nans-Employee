// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestModel _$RequestModelFromJson(Map<String, dynamic> json) {
  return _RequestModel.fromJson(json);
}

/// @nodoc
mixin _$RequestModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt', fromJson: DateTime.parse)
  DateTime get creationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get requestStatus => throw _privateConstructorUsedError;
  DepartmentModel get department => throw _privateConstructorUsedError;
  ServiceModel get service => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  ClientModel get client => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestModelCopyWith<RequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestModelCopyWith<$Res> {
  factory $RequestModelCopyWith(
          RequestModel value, $Res Function(RequestModel) then) =
      _$RequestModelCopyWithImpl<$Res, RequestModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'createdAt', fromJson: DateTime.parse)
          DateTime creationDate,
      @JsonKey(name: 'status')
          String requestStatus,
      DepartmentModel department,
      ServiceModel service,
      @JsonKey(name: 'user')
          ClientModel client});

  $DepartmentModelCopyWith<$Res> get department;
  $ServiceModelCopyWith<$Res> get service;
}

/// @nodoc
class _$RequestModelCopyWithImpl<$Res, $Val extends RequestModel>
    implements $RequestModelCopyWith<$Res> {
  _$RequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creationDate = null,
    Object? requestStatus = null,
    Object? department = null,
    Object? service = null,
    Object? client = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requestStatus: null == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as DepartmentModel,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceModel,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ClientModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DepartmentModelCopyWith<$Res> get department {
    return $DepartmentModelCopyWith<$Res>(_value.department, (value) {
      return _then(_value.copyWith(department: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceModelCopyWith<$Res> get service {
    return $ServiceModelCopyWith<$Res>(_value.service, (value) {
      return _then(_value.copyWith(service: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RequestModelCopyWith<$Res>
    implements $RequestModelCopyWith<$Res> {
  factory _$$_RequestModelCopyWith(
          _$_RequestModel value, $Res Function(_$_RequestModel) then) =
      __$$_RequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'createdAt', fromJson: DateTime.parse)
          DateTime creationDate,
      @JsonKey(name: 'status')
          String requestStatus,
      DepartmentModel department,
      ServiceModel service,
      @JsonKey(name: 'user')
          ClientModel client});

  @override
  $DepartmentModelCopyWith<$Res> get department;
  @override
  $ServiceModelCopyWith<$Res> get service;
}

/// @nodoc
class __$$_RequestModelCopyWithImpl<$Res>
    extends _$RequestModelCopyWithImpl<$Res, _$_RequestModel>
    implements _$$_RequestModelCopyWith<$Res> {
  __$$_RequestModelCopyWithImpl(
      _$_RequestModel _value, $Res Function(_$_RequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creationDate = null,
    Object? requestStatus = null,
    Object? department = null,
    Object? service = null,
    Object? client = null,
  }) {
    return _then(_$_RequestModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requestStatus: null == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as DepartmentModel,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceModel,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ClientModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestModel implements _RequestModel {
  _$_RequestModel(
      {required this.id,
      @JsonKey(name: 'createdAt', fromJson: DateTime.parse)
          required this.creationDate,
      @JsonKey(name: 'status')
          required this.requestStatus,
      required this.department,
      required this.service,
      @JsonKey(name: 'user')
          required this.client});

  factory _$_RequestModel.fromJson(Map<String, dynamic> json) =>
      _$$_RequestModelFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'createdAt', fromJson: DateTime.parse)
  final DateTime creationDate;
  @override
  @JsonKey(name: 'status')
  final String requestStatus;
  @override
  final DepartmentModel department;
  @override
  final ServiceModel service;
  @override
  @JsonKey(name: 'user')
  final ClientModel client;

  @override
  String toString() {
    return 'RequestModel(id: $id, creationDate: $creationDate, requestStatus: $requestStatus, department: $department, service: $service, client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.requestStatus, requestStatus) ||
                other.requestStatus == requestStatus) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.client, client) || other.client == client));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, creationDate, requestStatus,
      department, service, client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestModelCopyWith<_$_RequestModel> get copyWith =>
      __$$_RequestModelCopyWithImpl<_$_RequestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestModelToJson(
      this,
    );
  }
}

abstract class _RequestModel implements RequestModel {
  factory _RequestModel(
      {required final String id,
      @JsonKey(name: 'createdAt', fromJson: DateTime.parse)
          required final DateTime creationDate,
      @JsonKey(name: 'status')
          required final String requestStatus,
      required final DepartmentModel department,
      required final ServiceModel service,
      @JsonKey(name: 'user')
          required final ClientModel client}) = _$_RequestModel;

  factory _RequestModel.fromJson(Map<String, dynamic> json) =
      _$_RequestModel.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'createdAt', fromJson: DateTime.parse)
  DateTime get creationDate;
  @override
  @JsonKey(name: 'status')
  String get requestStatus;
  @override
  DepartmentModel get department;
  @override
  ServiceModel get service;
  @override
  @JsonKey(name: 'user')
  ClientModel get client;
  @override
  @JsonKey(ignore: true)
  _$$_RequestModelCopyWith<_$_RequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

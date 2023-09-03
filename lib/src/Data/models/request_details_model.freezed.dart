// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'userRequest')
  Map<String, dynamic> get form => throw _privateConstructorUsedError;
  ServiceModel get service => throw _privateConstructorUsedError;
  DepartmentModel get department => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime get creationDate => throw _privateConstructorUsedError;
  List<StageModel> get stages => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  ClientModel get client => throw _privateConstructorUsedError;

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
  $Res call(
      {String id,
      String status,
      @JsonKey(name: 'userRequest') Map<String, dynamic> form,
      ServiceModel service,
      DepartmentModel department,
      @JsonKey(name: 'createdAt') DateTime creationDate,
      List<StageModel> stages,
      @JsonKey(name: 'user') ClientModel client});

  $ServiceModelCopyWith<$Res> get service;
  $DepartmentModelCopyWith<$Res> get department;
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
    Object? status = null,
    Object? form = null,
    Object? service = null,
    Object? department = null,
    Object? creationDate = null,
    Object? stages = null,
    Object? client = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceModel,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as DepartmentModel,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stages: null == stages
          ? _value.stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<StageModel>,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ClientModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceModelCopyWith<$Res> get service {
    return $ServiceModelCopyWith<$Res>(_value.service, (value) {
      return _then(_value.copyWith(service: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DepartmentModelCopyWith<$Res> get department {
    return $DepartmentModelCopyWith<$Res>(_value.department, (value) {
      return _then(_value.copyWith(department: value) as $Val);
    });
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
  $Res call(
      {String id,
      String status,
      @JsonKey(name: 'userRequest') Map<String, dynamic> form,
      ServiceModel service,
      DepartmentModel department,
      @JsonKey(name: 'createdAt') DateTime creationDate,
      List<StageModel> stages,
      @JsonKey(name: 'user') ClientModel client});

  @override
  $ServiceModelCopyWith<$Res> get service;
  @override
  $DepartmentModelCopyWith<$Res> get department;
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
    Object? status = null,
    Object? form = null,
    Object? service = null,
    Object? department = null,
    Object? creationDate = null,
    Object? stages = null,
    Object? client = null,
  }) {
    return _then(_$_RequestDetailsModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      form: null == form
          ? _value._form
          : form // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceModel,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as DepartmentModel,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      stages: null == stages
          ? _value._stages
          : stages // ignore: cast_nullable_to_non_nullable
              as List<StageModel>,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ClientModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestDetailsModel implements _RequestDetailsModel {
  _$_RequestDetailsModel(
      {required this.id,
      required this.status,
      @JsonKey(name: 'userRequest') required final Map<String, dynamic> form,
      required this.service,
      required this.department,
      @JsonKey(name: 'createdAt') required this.creationDate,
      required final List<StageModel> stages,
      @JsonKey(name: 'user') required this.client})
      : _form = form,
        _stages = stages;

  factory _$_RequestDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_RequestDetailsModelFromJson(json);

  @override
  final String id;
  @override
  final String status;
  final Map<String, dynamic> _form;
  @override
  @JsonKey(name: 'userRequest')
  Map<String, dynamic> get form {
    if (_form is EqualUnmodifiableMapView) return _form;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_form);
  }

  @override
  final ServiceModel service;
  @override
  final DepartmentModel department;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime creationDate;
  final List<StageModel> _stages;
  @override
  List<StageModel> get stages {
    if (_stages is EqualUnmodifiableListView) return _stages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stages);
  }

  @override
  @JsonKey(name: 'user')
  final ClientModel client;

  @override
  String toString() {
    return 'RequestDetailsModel(id: $id, status: $status, form: $form, service: $service, department: $department, creationDate: $creationDate, stages: $stages, client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestDetailsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._form, _form) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            const DeepCollectionEquality().equals(other._stages, _stages) &&
            (identical(other.client, client) || other.client == client));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      status,
      const DeepCollectionEquality().hash(_form),
      service,
      department,
      creationDate,
      const DeepCollectionEquality().hash(_stages),
      client);

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
  factory _RequestDetailsModel(
      {required final String id,
      required final String status,
      @JsonKey(name: 'userRequest')
          required final Map<String, dynamic> form,
      required final ServiceModel service,
      required final DepartmentModel department,
      @JsonKey(name: 'createdAt')
          required final DateTime creationDate,
      required final List<StageModel> stages,
      @JsonKey(name: 'user')
          required final ClientModel client}) = _$_RequestDetailsModel;

  factory _RequestDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_RequestDetailsModel.fromJson;

  @override
  String get id;
  @override
  String get status;
  @override
  @JsonKey(name: 'userRequest')
  Map<String, dynamic> get form;
  @override
  ServiceModel get service;
  @override
  DepartmentModel get department;
  @override
  @JsonKey(name: 'createdAt')
  DateTime get creationDate;
  @override
  List<StageModel> get stages;
  @override
  @JsonKey(name: 'user')
  ClientModel get client;
  @override
  @JsonKey(ignore: true)
  _$$_RequestDetailsModelCopyWith<_$_RequestDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

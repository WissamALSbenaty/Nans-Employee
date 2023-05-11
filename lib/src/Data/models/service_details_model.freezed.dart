// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'service_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServiceDetailsModel _$ServiceDetailsModelFromJson(Map<String, dynamic> json) {
  return _ServiceDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceDetailsModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DepartmentModel get department => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get votes => throw _privateConstructorUsedError;
  List<CommentModel> get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceDetailsModelCopyWith<ServiceDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceDetailsModelCopyWith<$Res> {
  factory $ServiceDetailsModelCopyWith(
          ServiceDetailsModel value, $Res Function(ServiceDetailsModel) then) =
      _$ServiceDetailsModelCopyWithImpl<$Res, ServiceDetailsModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      DepartmentModel department,
      double price,
      String? image,
      String description,
      double votes,
      List<CommentModel> comments});

  $DepartmentModelCopyWith<$Res> get department;
}

/// @nodoc
class _$ServiceDetailsModelCopyWithImpl<$Res, $Val extends ServiceDetailsModel>
    implements $ServiceDetailsModelCopyWith<$Res> {
  _$ServiceDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? department = null,
    Object? price = null,
    Object? image = freezed,
    Object? description = null,
    Object? votes = null,
    Object? comments = null,
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
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as DepartmentModel,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      votes: null == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as double,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
    ) as $Val);
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
abstract class _$$_ServiceDetailsModelCopyWith<$Res>
    implements $ServiceDetailsModelCopyWith<$Res> {
  factory _$$_ServiceDetailsModelCopyWith(_$_ServiceDetailsModel value,
          $Res Function(_$_ServiceDetailsModel) then) =
      __$$_ServiceDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      DepartmentModel department,
      double price,
      String? image,
      String description,
      double votes,
      List<CommentModel> comments});

  @override
  $DepartmentModelCopyWith<$Res> get department;
}

/// @nodoc
class __$$_ServiceDetailsModelCopyWithImpl<$Res>
    extends _$ServiceDetailsModelCopyWithImpl<$Res, _$_ServiceDetailsModel>
    implements _$$_ServiceDetailsModelCopyWith<$Res> {
  __$$_ServiceDetailsModelCopyWithImpl(_$_ServiceDetailsModel _value,
      $Res Function(_$_ServiceDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? department = null,
    Object? price = null,
    Object? image = freezed,
    Object? description = null,
    Object? votes = null,
    Object? comments = null,
  }) {
    return _then(_$_ServiceDetailsModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as DepartmentModel,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      votes: null == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as double,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServiceDetailsModel implements _ServiceDetailsModel {
  _$_ServiceDetailsModel(
      {required this.id,
      required this.title,
      required this.department,
      required this.price,
      this.image,
      required this.description,
      required this.votes,
      required final List<CommentModel> comments})
      : _comments = comments;

  factory _$_ServiceDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServiceDetailsModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final DepartmentModel department;
  @override
  final double price;
  @override
  final String? image;
  @override
  final String description;
  @override
  final double votes;
  final List<CommentModel> _comments;
  @override
  List<CommentModel> get comments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'ServiceDetailsModel(id: $id, title: $title, department: $department, price: $price, image: $image, description: $description, votes: $votes, comments: $comments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServiceDetailsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.votes, votes) || other.votes == votes) &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      department,
      price,
      image,
      description,
      votes,
      const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServiceDetailsModelCopyWith<_$_ServiceDetailsModel> get copyWith =>
      __$$_ServiceDetailsModelCopyWithImpl<_$_ServiceDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServiceDetailsModelToJson(
      this,
    );
  }
}

abstract class _ServiceDetailsModel implements ServiceDetailsModel {
  factory _ServiceDetailsModel(
      {required final String id,
      required final String title,
      required final DepartmentModel department,
      required final double price,
      final String? image,
      required final String description,
      required final double votes,
      required final List<CommentModel> comments}) = _$_ServiceDetailsModel;

  factory _ServiceDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_ServiceDetailsModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  DepartmentModel get department;
  @override
  double get price;
  @override
  String? get image;
  @override
  String get description;
  @override
  double get votes;
  @override
  List<CommentModel> get comments;
  @override
  @JsonKey(ignore: true)
  _$$_ServiceDetailsModelCopyWith<_$_ServiceDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

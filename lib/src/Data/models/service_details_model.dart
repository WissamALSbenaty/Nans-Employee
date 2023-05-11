
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nans/src/Data/models/comment_model.dart';
import 'package:nans/src/Data/models/department_model.dart';

part 'service_details_model.freezed.dart';
part 'service_details_model.g.dart';

@freezed
class ServiceDetailsModel with _$ServiceDetailsModel{

  factory ServiceDetailsModel({
    required String id,
    required String title,
    required DepartmentModel department,
    required double price,
    String? image,
    required String description,
    required double votes,
    required List<CommentModel> comments
  })=_ServiceDetailsModel;

  factory ServiceDetailsModel.fromJson( Map<String,dynamic> data)=>_$ServiceDetailsModelFromJson(data);


}
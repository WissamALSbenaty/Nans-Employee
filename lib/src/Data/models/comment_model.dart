
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel{

  factory CommentModel({
    required String id,
    required String username,
    required String comment,
    required double vote,
  })=_CommentModel;

  factory CommentModel.fromJson( Map<String,dynamic> data)=>_$CommentModelFromJson(data);


}
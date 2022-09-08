import 'package:freezed_annotation/freezed_annotation.dart';

part 'id_with_name_model.freezed.dart';
part 'id_with_name_model.g.dart';

@freezed
class IdWithNameModel with _$IdWithNameModel{
  const IdWithNameModel._();

  factory IdWithNameModel({
    required int id,
    required String name,
  })=_IdWithNameModel;

  factory IdWithNameModel.fromJson( Map<String,dynamic> data)=>_$IdWithNameModelFromJson(data);

  factory IdWithNameModel.empty()=>IdWithNameModel(id: 1, name: 'empty');

}
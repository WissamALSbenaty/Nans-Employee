
import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_value_model.freezed.dart';
part 'key_value_model.g.dart';

@freezed
class KeyValueModel with _$KeyValueModel{

  factory KeyValueModel({
    required String key,
    required String value,
  })=_KeyValueModel;

  factory KeyValueModel.fromJson( Map<String,dynamic> data)=>_$KeyValueModelFromJson(data);


}
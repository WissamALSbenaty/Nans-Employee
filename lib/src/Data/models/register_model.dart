
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nans/src/core/util/enums.dart';

part 'register_model.freezed.dart';
part 'register_model.g.dart';

@freezed
class RegisterModel with _$RegisterModel{

  factory RegisterModel({
    required String email,
    required String name,
    required String fatherName,
    required String motherName,
    required String phoneNumber,
    required String password,
    required GenderType gender,
  })=_RegisterModel;

  factory RegisterModel.fromJson( Map<String,dynamic> data)=>_$RegisterModelFromJson(data);


}
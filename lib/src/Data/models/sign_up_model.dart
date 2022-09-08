
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_model.freezed.dart';
part 'sign_up_model.g.dart';

@freezed
class SignUpModel with _$SignUpModel{

  factory SignUpModel({
    required String phoneNumber,
    required String username,
    String? email,
    String? landlineNumber,
  })=_SignUpModel;

  factory SignUpModel.fromJson( Map<String,dynamic> data)=>_$SignUpModelFromJson(data);

  factory SignUpModel.empty()=>SignUpModel(phoneNumber: '09', username:'empty',email: 'empty@test');


}
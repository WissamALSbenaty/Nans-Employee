import 'package:freezed_annotation/freezed_annotation.dart';
part 'client_model.g.dart';

@JsonSerializable()
class ClientModel {

  final String name,email,phoneNumber;


  ClientModel({
    required this.name,
    required this.email,
    required this.phoneNumber,
    });

  factory ClientModel.fromJson( Map<String,dynamic> data)=>_$ClientModelFromJson(data);


}
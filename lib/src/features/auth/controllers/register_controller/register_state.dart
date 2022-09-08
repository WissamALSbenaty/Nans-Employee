part of 'register_bloc.dart';

@freezed
 class RegisterState with _$RegisterState {
   factory RegisterState({
     required String username,required String phoneNumber,
     String? email,String? landlineNumber,
   }) = _RegisterState;

   factory RegisterState.registering({
     required String username,required String phoneNumber,
     String? email,String? landlineNumber,
   }) = Registering;

   factory RegisterState.initial(){
     return RegisterState(username:  '',phoneNumber: "");
   }
}

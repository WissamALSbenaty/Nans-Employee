part of 'register_bloc.dart';

@freezed
 class RegisterState with _$RegisterState {
   factory RegisterState({required String firstName,required String phoneNumber,required String lastName,
     required String password,required String referralCode,
   }) = _RegisterState;

   factory RegisterState.registering({required String firstName,required String phoneNumber,required String lastName,
     required String password,required String referralCode,
   }) = Registering;

   factory RegisterState.initial(){
     return RegisterState(referralCode: '', password:"",firstName: "",lastName: "",phoneNumber: "");
   }
}

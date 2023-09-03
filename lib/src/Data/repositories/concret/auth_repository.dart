

import 'package:nans/src/Data/Errors/core_errors.dart';
import 'package:nans/src/Data/Errors/custom_error.dart';
import 'package:nans/src/Data/local_database_tables/app_database.dart';
import 'package:nans/src/Data/models/login_model.dart';
import 'package:nans/src/Data/models/login_response_model.dart';
import 'package:nans/src/Data/models/response_model.dart';
import 'package:nans/src/Data/models/user_profile_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_auth_repository.dart';
import 'package:injectable/injectable.dart';


@Singleton(as: IAuthRepository)
class AuthRepository extends IAuthRepository{

  AuthRepository(super.localDatabase,super.apiHelper);


  @override
  Future<LoginResponseModel> login(LoginModel loginModel)async{

    try{
        String? firebaseToken=await getFirebaseToken();
        print('Wiso $firebaseToken');
      ResponseModel response=await apiHelper.post(url:  'employee/auth/login',
        formData:{
          'email':loginModel.email,
          'password':loginModel.password,
          'fcmToken': firebaseToken??'',
        });
    LoginResponseModel loginResponseModel=LoginResponseModel.fromJson(response.data);

    await setAuthLocalData(name:  loginResponseModel.user.name,email: loginResponseModel.user.email,
       phoneNumber: loginResponseModel.user.phoneNumber,token: loginResponseModel.token, password: loginModel.password,);

    return loginResponseModel;
    }
    on CustomError {
      rethrow ;
    }
    on Exception {
      throw SomethingWentWrongError();
    }
  }

  @override
  Future<void> sendConfirmationCode({required String email})async{
    throw UnimplementedError();
  }
  @override
  Future<void> changePassword({required String oldPassword, required String newPassword})async {
    User currentUser =await localDatabase.getUser();
    await apiHelper.patch(url: 'mobile/user/updatePassword', formData: {
      'oldPassword':oldPassword,
      'newPassword':newPassword,
    });
    await setAuthLocalData(name:currentUser.name,email: currentUser.email,
        phoneNumber:currentUser.phoneNumber,
        password:newPassword,
        token:currentUser.token,);
  }


  @override
  Future<UserProfileModel> getUserProfile()async {
    User currentUser=await localDatabase.getUser();
    UserProfileModel ret =await apiHelper.getObject(url: 'dashboard/employee/profile', parameters: {},mapper:UserProfileModel.fromJson );

    await setAuthLocalData(name:ret.name,email: ret.email,
      phoneNumber:ret.phoneNumber,
        password:currentUser.password,
        token:currentUser.token,);

    return ret;
  }

  @override
  Future<void> checkConfirmationCode({required String email, required String otpCode})async {
    await apiHelper.post(url: 'mobile/user/validate', formData:  {
      'code':otpCode,
      'email':email,
    });
  }
  @override
  Future<void> updateFirebaseToken() async{
  /*  String? firebaseToken=await getFirebaseToken();
    if(firebaseToken!=null) {
      await apiHelper.post(url: 'Auth/AddOrUpdateFireBaseToken', formData: {
      'FireBaseToken':firebaseToken,
      'DeviceType':Platform.isIOS? "IOS":"Android",
    });
    }*/
  }

  @override
  Future<void> logout()async{
    /*try{
      String? firebaseToken=await getFirebaseToken();
      await apiHelper.post(url: 'Auth/Logout', formData: {
        'FireBaseToken':firebaseToken,
      });
      await FirebaseMessaging.instance.deleteToken();
      await localDatabase.clearDatabase();

      apiHelper.setToken('');
    }
    on CustomError {
      rethrow ;
    }
    on Exception {
      throw SomethingWentWrongError();
    }*/
  }
}
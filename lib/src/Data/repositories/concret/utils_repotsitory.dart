


import 'package:merit_driver/src/Data/repositories/abstract/i_utils_repository.dart';
import 'package:merit_driver/src/Data/api_helper.dart';
import 'package:merit_driver/src/Data/models/mobile_versions_model.dart';
import 'package:merit_driver/src/Data/models/response_model.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IUtilsRepository)
class UtilsRepository extends IUtilsRepository {
  UtilsRepository(ApiHelper apiHelper) :super(apiHelper);


  @override
  Future<MobileVersionsModel> getApplicationVersions()async {
   ResponseModel response=  await apiHelper.get(url: 'MobileVersion', parameters: {});
   Map<String,dynamic> data=response.data;
   return MobileVersionsModel.fromJson(data);
  }

}
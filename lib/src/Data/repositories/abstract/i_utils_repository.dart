


import 'package:merit_driver/src/Data/Repositories/abstract/repository.dart';
import 'package:merit_driver/src/Data/api_helper.dart';
import 'package:merit_driver/src/Data/models/mobile_versions_model.dart';

abstract class IUtilsRepository extends Repository{

  IUtilsRepository(ApiHelper apiHelper):super(apiHelper);

  Future<MobileVersionsModel> getApplicationVersions();
}
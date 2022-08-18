


import 'package:etloob/src/Data/Repositories/abstract/repository.dart';
import 'package:etloob/src/Data/api_helper.dart';
import 'package:etloob/src/Data/models/mobile_versions_model.dart';

abstract class IUtilsRepository extends Repository{

  IUtilsRepository(ApiHelper apiHelper):super(apiHelper);

  Future<MobileVersionsModel> getApplicationVersions();
}
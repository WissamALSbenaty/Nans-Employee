
import 'package:nans/src/Data/Repositories/abstract/repository.dart';
import 'package:nans/src/Data/api_helper.dart';
import 'package:nans/src/Data/models/app_config_model.dart';
import 'package:nans/src/Data/models/app_translation_model.dart';

abstract class IUtilsRepository extends Repository{

  IUtilsRepository(ApiHelper apiHelper):super(apiHelper);

  Future<AppTranslationModel> getAppTranslation();
  Future<AppConfigModel> getAppConfig();

}
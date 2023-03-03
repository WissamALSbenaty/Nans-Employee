


import 'dart:io';

import 'package:etloob/src/core/Data/Repositories/abstract/repository.dart';
import 'package:etloob/src/core/Data/api_helper.dart';
import 'package:etloob/src/core/Data/models/app_config_model.dart';
import 'package:etloob/src/core/Data/models/app_translation_model.dart';
import 'package:etloob/src/core/Data/models/pagination_data_model.dart';

abstract class IUtilsRepository extends Repository{

  IUtilsRepository(ApiHelper apiHelper):super(apiHelper);

  Future<AppTranslationModel> getAppTranslation();
  Future<AppConfigModel> getAppConfig();
}
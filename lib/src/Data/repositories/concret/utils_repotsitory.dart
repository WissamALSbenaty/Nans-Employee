



import 'package:nans/src/Data/api_helper.dart';
import 'package:nans/src/Data/models/app_config_model.dart';
import 'package:nans/src/Data/models/app_settings_model.dart';
import 'package:nans/src/Data/models/app_translation_model.dart';
import 'package:nans/src/Data/models/notification_model.dart';
import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_utils_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IUtilsRepository)
class UtilsRepository extends IUtilsRepository {
  UtilsRepository(ApiHelper apiHelper) :super(apiHelper);


  @override
  Future<AppConfigModel> getAppConfig()async => AppConfigModel(mobileSettings: AppSettingsModel(
      androidCurrentVersion: "0.0.0",androidMinimumVersion: "0.0",iosCurrentVersion: "0.0.0",iosMinimumVersion: "0.0",));


  @override
  Future<AppTranslationModel> getAppTranslation()=>apiHelper.getObject(url: 'mobile/translation', parameters: {},
      mapper:(data)=>  AppTranslationModel(translation: data.map((key, value) => MapEntry(key, value.toString())  )));
  @override
  Future<PaginationDataModel<NotificationModel>> getNotifications({required int pageNumber}) =>apiHelper.getPagination(url: 'dashboard/notification/',
      parameters: {"page":pageNumber.toString()}, mapper:NotificationModel.fromJson);



}
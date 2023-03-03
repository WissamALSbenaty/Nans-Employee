
import 'package:etloob/src/core/Data/models/app_settings_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config_model.freezed.dart';
part 'app_config_model.g.dart';

@freezed
class AppConfigModel with _$AppConfigModel{

  factory AppConfigModel({
    required AppSettingsModel mobileSettings,
  })=_AppConfigModel;

  factory AppConfigModel.fromJson( Map<String,dynamic> data)=>_$AppConfigModelFromJson(data);


}
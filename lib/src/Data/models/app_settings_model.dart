
import 'dart:io';

import 'package:etloob/src/core/util/enums.dart';
import 'package:etloob/src/core/util/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_model.freezed.dart';
part 'app_settings_model.g.dart';

@freezed
class AppSettingsModel with _$AppSettingsModel{

  AppSettingsModel._();

  factory AppSettingsModel({
    @JsonKey(name:'androidMinVersion') required String androidMinimumVersion,
    @JsonKey(name:'androidLatestVersion') required String androidCurrentVersion,
    @JsonKey(name: 'iosMinVersion') required String iosMinimumVersion,
    @JsonKey(name: 'iosLatestVersion') required String iosCurrentVersion,
  })=_AppSettingsModel;

  factory AppSettingsModel.fromJson( Map<String,dynamic> data)=>_$AppSettingsModelFromJson(data);


  ApplicationState getApplicationState()  {
    bool isIos = Platform.isIOS;

    if (Constants.currentAppVersion.compareTo(isIos ? iosCurrentVersion : androidCurrentVersion) >= 0) {
      return ApplicationState.stable;
    } else if (Constants.currentAppVersion.compareTo(isIos ? iosMinimumVersion : androidMinimumVersion) >= 0) {
      return ApplicationState.canUpdate;
    } else {
      return ApplicationState.mustUpdate;
    }
  }
}
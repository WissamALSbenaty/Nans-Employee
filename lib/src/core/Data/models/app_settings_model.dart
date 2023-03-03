
import 'dart:io';

import 'package:etloob/src/core/util/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'app_settings_model.freezed.dart';
part 'app_settings_model.g.dart';

@freezed
class AppSettingsModel with _$AppSettingsModel{

  AppSettingsModel._();

  factory AppSettingsModel({
    @JsonKey(name: 'minOrderValue') required int minimumOrderValue,
    required int pointValue,
    @JsonKey(name:'androidMinVersion') required double androidMinimumVersion,
    @JsonKey(name:'androidLatestVersion') required double androidCurrentVersion,
    @JsonKey(name: 'iosMinVersion') required String iosMinimumVersion,
    @JsonKey(name: 'iosLatestVersion') required String iosCurrentVersion,
    required String currency,
  })=_AppSettingsModel;

  factory AppSettingsModel.fromJson( Map<String,dynamic> data)=>_$AppSettingsModelFromJson(data);


  Future<ApplicationState> getApplicationState() async {

    var packageInfo = await PackageInfo.fromPlatform();
    bool isIos = Platform.isIOS;
    String appVersion = isIos ? packageInfo.version : packageInfo.buildNumber;


    if (double.parse(appVersion) >=
        double.parse(isIos ? iosCurrentVersion : androidCurrentVersion.toString())) {

      return ApplicationState.stable;

    } else if (double.parse(appVersion) >=
        double.parse(isIos
            ? (iosMinimumVersion) : androidMinimumVersion.toString())) {
      return ApplicationState.canUpdate;
    } else {
      return ApplicationState.mustUpdate;
    }
  }
}
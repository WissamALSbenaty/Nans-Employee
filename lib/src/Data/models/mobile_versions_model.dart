
import 'dart:io';

import 'package:merit_driver/src/core/util/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'mobile_versions_model.freezed.dart';
part 'mobile_versions_model.g.dart';

@freezed
class MobileVersionsModel with _$MobileVersionsModel{

  const MobileVersionsModel._();

  factory MobileVersionsModel({
    @JsonKey(name:'androidMinVersion') required int androidMinimumVersion,
    @JsonKey(name:'androidLatestVersion') required int androidCurrentVersion,
    @JsonKey(name: 'iosMinVersion') required String iosMinimumVersion,
    @JsonKey(name: 'iosLatestVersion') required String iosCurrentVersion,
    })=_MobileVersionModel;

  factory MobileVersionsModel.fromJson( Map<String,dynamic> data)=>_$MobileVersionsModelFromJson(data);


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


import 'package:etloob/src/core/Data/models/app_settings_model.dart';
import 'package:etloob/src/core/controllers/app_controller.dart';
import 'package:etloob/src/core/util/enums.dart';
import 'package:etloob/src/core/presentation/dialogs/force_update_dialog.dart';
import 'package:etloob/src/core/presentation/dialogs/optional_update_dialog.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';


class AppUpdaterReaction{
  final AppController appController;
  final BuildContext context;

  AppUpdaterReaction(this.appController,this.context);

  ReactionDisposer getReaction(){
    return reaction<AppSettingsModel>((_) =>appController.appConfigModel!.mobileSettings ,
            (settings)async {
          ApplicationState currentApplicationState=await settings.getApplicationState();
          if( currentApplicationState==ApplicationState.mustUpdate){
            showDialog(
              context: context,
              barrierDismissible: false,
              builder:(dialogCtx)=>const ForceUpdateDialog(),
            );
          }
          else if(currentApplicationState==ApplicationState.canUpdate){
            showDialog(
              context: context,
              builder:(dialogCtx)=>const OptionalUpdateDialog(),

            );
          }
        });

  }

}
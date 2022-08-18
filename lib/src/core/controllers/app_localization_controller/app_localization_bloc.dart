
import 'package:etloob/src/core/util/localization_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_localization_bloc.freezed.dart';
part 'app_localization_state.dart';

@injectable
class AppLocalizationBloc extends Cubit<AppLocalizationState> {

  final LocalizationManager localizationManager;
  final BuildContext context;
  AppLocalizationBloc(@factoryParam this.context, this.localizationManager) :
        super( AppLocalizationState(isEnglishLanguage: localizationManager.isEnglishLanguage));


  void changeLanguage(){
    localizationManager.toggleLanguage(context);

    emit(AppLocalizationState(isEnglishLanguage: !state.isEnglishLanguage));
  }


}

import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/util/localization_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_appearance_bloc.freezed.dart';
part 'app_appearance_state.dart';

@injectable
class AppAppearanceBloc extends Cubit<AppAppearanceState> {
  final LocalizationManager localizationManager;
  final ThemeManager themeManager;
  final BuildContext context;

  AppAppearanceBloc(@factoryParam this.context,this.localizationManager,this.themeManager) :
        super( AppAppearanceState(isEnglishLanguage: localizationManager.isEnglishLanguage,isDarkMode: themeManager.isDarkMode));

  void changeLanguage(){
    localizationManager.toggleLanguage(context);

    emit(state.copyWith(isEnglishLanguage: !state.isEnglishLanguage));
  }
  void changeThemeMode(){
    themeManager.toggleIsDarkMode();

    emit(state.copyWith(isDarkMode: !state.isDarkMode));
  }
}
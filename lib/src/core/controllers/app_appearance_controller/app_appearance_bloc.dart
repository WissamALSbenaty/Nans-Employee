import 'package:merit_driver/src/core/presentation/theme_manager.dart';
import 'package:merit_driver/src/core/util/localization_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_appearance_bloc.freezed.dart';
part 'app_appearance_state.dart';

@injectable
class AppAppearanceBloc extends Cubit<AppAppearanceState> {
  final LocalizationManager localizationManager;
  final BuildContext context;

  AppAppearanceBloc(@factoryParam this.context,this.localizationManager) :
        super( AppAppearanceState(isEnglishLanguage: localizationManager.isEnglishLanguage,isDarkMode: ThemeManager.isDarkMode));

  void changeLanguage(){
    localizationManager.toggleLanguage(context);

    emit(state.copyWith(isEnglishLanguage: !state.isEnglishLanguage));
  }
  void changeThemeMode(){
    ThemeManager.toggleIsDarkMode();

    emit(state.copyWith(isDarkMode: !state.isDarkMode));
  }
}
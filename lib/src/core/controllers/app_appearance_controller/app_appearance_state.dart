part of 'app_appearance_bloc.dart';

@freezed
class AppAppearanceState with _$AppAppearanceState {
  factory AppAppearanceState({required bool isEnglishLanguage,required bool isDarkMode,}) = _AppAppearanceState;
}

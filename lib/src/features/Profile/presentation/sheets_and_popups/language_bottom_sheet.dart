import 'package:nans/src/core/controllers/app_controller.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/core/presentation/sheets/custom_radio_buttons_sheet.dart';
import 'package:nans/src/core/util/mixins.dart';
import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatelessWidget with WidgetControllerCreatorMixin<AppController> {

  final List<String> languages=['English','Arabic'];

  LanguageBottomSheet({Key? key}) : super(key: key);


  void changeSelectedLanguage(int id){
    createdController.changeAppLanguage();
    appRouter.pop();
  }


  @override
  Widget build(BuildContext context) {
    final int selectedLanguageId=createdController.localizationManager.isEnglishLanguage?0:1;
    return CustomRadioButtonsSheet<String>(onSelectItem:
        (value)=>
    selectedLanguageId!=languages.indexOf(value)?
    changeSelectedLanguage(languages.indexOf(value)):
        (){},
      allItems: languages,
      title: 'Change Language',
      selectedItem: languages[selectedLanguageId],
      nameGetter: (language)=>language.translateWord,

    );

  }
}
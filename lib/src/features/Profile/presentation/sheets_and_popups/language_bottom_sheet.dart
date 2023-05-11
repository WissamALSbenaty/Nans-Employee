import 'package:auto_route/auto_route.dart';
import 'package:nans/src/core/controllers/app_controller.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/core/presentation/sheets/custom_radio_buttons_sheet.dart';
import 'package:nans/src/core/util/mixins.dart';
import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatelessWidget with WidgetStoreCreatorMixin<AppController> {

  final List<String> languages=['English','Arabic'];

  LanguageBottomSheet({Key? key}) : super(key: key);


  void changeSelectedLanguage(int id,BuildContext context){
    createdStore.changeAppLanguage(context);
    AutoRouter.of(context).pop();
  }


  @override
  Widget build(BuildContext context) {
    final int selectedLanguageId=createdStore.localizationManager.isEnglishLanguage?0:1;
    return CustomRadioButtonsSheet<String>(onSelectItem:
        (value)=>
    selectedLanguageId!=languages.indexOf(value)?
    changeSelectedLanguage(languages.indexOf(value), context):
        (){},
      allItems: languages,
      title: 'Change Language',
      selectedItem: languages[selectedLanguageId],
      nameGetter: (language)=>language.translateWord,

    );

  }
}
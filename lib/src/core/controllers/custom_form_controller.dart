

import 'package:etloob/src/core/Data/Errors/core_errors.dart';
import 'package:etloob/src/core/Data/Errors/custom_error.dart';
import 'package:etloob/src/core/controllers/base_store.dart';
import 'package:etloob/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:etloob/src/core/util/enums.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'custom_form_controller.g.dart';

abstract class CustomFormController extends CustomFormControllerBase with _$CustomFormController{

  CustomFormController({ super.initialValues,required super.fieldsNumber,required super.afterSuccessSubmit,required super.submitFunction});
}

abstract class CustomFormControllerBase extends BaseStoreController with Store {

  final int fieldsNumber;
  final List<String?>? initialValues;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final Future<void> Function(List<String?>) submitFunction;
  final Future<void> Function(List<String?>,BuildContext) afterSuccessSubmit;

  CustomFormControllerBase({this.initialValues,required this.fieldsNumber,required this.submitFunction, required this.afterSuccessSubmit}){
    onInit();
    currentValues=ObservableList.of(List.generate(fieldsNumber, (index) =>initialValues?[index] ));
  }

  @observable
  bool isSubmitting=false;

  @observable
  ObservableList<String?> currentValues=ObservableList();


  @action
Future<void> changeValue(int index,String? newValue)async{
    currentValues[index]=newValue;
  }

  @computed
  bool get canSubmit=>  formKey.currentState!.validate();


  @action
  Future<void> submitForm(BuildContext context)async{
    if(isSubmitting) {
      return;
    }
    try{
      if(!formKey.currentState!.validate()){
        return;
      }

      formKey.currentState!.save();

      isSubmitting=true;

      await submitFunction(currentValues);
      await afterSuccessSubmit(currentValues,context);
    }
    on CustomError catch(e){
      BottomSnackBar.show(e.errorMessage, ToastType.error,
    onRetry: e is InternetConnectionError? ()=>submitForm(context):null);
    }
    finally{
      isSubmitting=false;
    }

  }
}


import 'package:etloob/src/core/controllers/base_store.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'custom_form_controller.g.dart';

abstract class CustomFormController extends CustomFormControllerBase with _$CustomFormController{

  CustomFormController(super.logger,{ super.initialValues,required super.fieldsNumber,required super.afterSuccessSubmit,required super.submitFunction});
}

abstract class CustomFormControllerBase extends BaseStoreController with Store {

  final int fieldsNumber;
  final List<String?>? initialValues;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final Future<void> Function(List<String?>) submitFunction;
  final Future<void> Function(List<String?>,BuildContext) afterSuccessSubmit;

  CustomFormControllerBase(super.logger,{this.initialValues,required this.fieldsNumber,required this.submitFunction, required this.afterSuccessSubmit}){
    onInit();
    currentValues=ObservableList.of(List.generate(fieldsNumber, (index) =>initialValues?[index] ));
  }


  @observable
  ObservableList<String?> currentValues=ObservableList();


  @action
  Future<void> changeValue(int index,String? newValue)async{
    currentValues[index]=newValue;
  }

  @computed
  bool get canSubmit=>  formKey.currentState!.validate();


  @action
  Future<void> submitForm(BuildContext context)=>runStoreSecondaryFunction(Future(()async{
    if(isLoading) {
      return ;
    }
    if(!canSubmit){
      return;
    }

    formKey.currentState!.save();

    isLoading=true;

    await submitFunction(currentValues);
    isLoading=false;
    await afterSuccessSubmit(currentValues,context);
  }
  ),onCatchError: (){isLoading=false;});
}


import 'package:nans/src/core/controllers/base_store.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'custom_form_controller.g.dart';

abstract class CustomFormController extends CustomFormControllerBase with _$CustomFormController{

  CustomFormController(super.logger,{ super.initialValues,required super.fieldsNumber,});
}

abstract class CustomFormControllerBase extends BaseStoreController with Store {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
   Future<void> submitFunction() ;
   Future<void> afterSuccessSubmit(BuildContext context) ;

  CustomFormControllerBase(super.logger,{List<String?>? initialValues,required int fieldsNumber,}){
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

    await submitFunction();
    isLoading=false;
    await afterSuccessSubmit(context);
  }
  ),onCatchError: (){isLoading=false;});
}
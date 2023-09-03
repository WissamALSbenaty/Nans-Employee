

import 'package:nans/src/core/controllers/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

mixin CustomFormMixin on BaseController{
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Future<void> submitFunction() ;
  Future<void> afterSuccessSubmit() ;
  List<FocusNode> focusNodes=[];

  void initForm({required int fieldsNumber,List<String?>? initialValues}){
    currentValues=ObservableList.of(List.generate(fieldsNumber, (index) =>initialValues?[index] ));
    focusNodes=ObservableList.of(List.generate(fieldsNumber, (index) =>FocusNode() ));
  }
  @observable
  ObservableList<String?> currentValues=ObservableList();

  @action
  void changeFormValue(int index,String? newValue)=> currentValues[index]=newValue;

  @computed
  bool get canSubmit=>  formKey.currentState!.validate();


  @action
  Future<void> submitForm()=>runStoreSecondaryFunction(Future(()async{
    if(isLoading || !canSubmit){
      return;
    }

    formKey.currentState!.save();
    isLoading=true;

    await submitFunction();
    isLoading=false;
    await afterSuccessSubmit();
  }
  ),onCatchError: (){isLoading=false;});

  @override
  void dispose(){
    for (var element in focusNodes) {
      element.dispose();
    }
  }
}

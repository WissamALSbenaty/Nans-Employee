
import 'package:nans/src/core/controllers/base_controller.dart';
import 'package:nans/src/core/controllers/custom_form_mixin.dart';
import 'package:injectable/injectable.dart';

typedef StringCallback = void Function(String,String);

@injectable
class  ChangeStageRequestDialogController extends BaseController with CustomFormMixin{

  final StringCallback onSubmitDialog ;
  ChangeStageRequestDialogController(@factoryParam this.onSubmitDialog, super.logger){
    initForm(fieldsNumber: 2,);
  }

  @override
  Future<void> afterSuccessSubmit()async=>onSubmitDialog(currentValues[0]!,currentValues[0]!);

  @override
  Future<void> submitFunction()async {}
}
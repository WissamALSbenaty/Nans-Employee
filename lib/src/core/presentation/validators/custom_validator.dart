

abstract class CustomValidator{

  CustomValidator? nextValidator;


  CustomValidator({this.nextValidator});

  // if not all Conditions Are Satisfied then some custom error will be thrown
  void validate({required String fieldName,required String? toCheckString});

  void check({required String fieldName,required String? toCheckString}) {
    validate(toCheckString: toCheckString,fieldName: fieldName);
    nextValidator?.check(fieldName: fieldName,toCheckString: toCheckString);

  }
}
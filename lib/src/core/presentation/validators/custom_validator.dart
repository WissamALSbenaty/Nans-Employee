

abstract class CustomValidator{

  CustomValidator? nextValidator;


  CustomValidator({this.nextValidator});

  // if not all Conditions Are Satisfied then some custom error will be thrown
  String? validate({required String fieldName,required String? toCheckString});

  String? check({required String fieldName,required String? toCheckString}) {
    return validate(toCheckString: toCheckString,fieldName: fieldName)??
    nextValidator?.check(fieldName: fieldName,toCheckString: toCheckString);

  }
}
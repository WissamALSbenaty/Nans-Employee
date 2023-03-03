
import 'custom_error.dart';

class PhoneNumberIsntExistError extends CustomError {
  PhoneNumberIsntExistError() :super(imagePath:'',errorMessage:'Cant Find An Account With This Phone Number .. Please Check You Write Your Phone Number Correctly' );
}
class NotReadTermsAndConditionError extends CustomError {
  NotReadTermsAndConditionError() :super(imagePath:'',errorMessage:'Please Read Our Terms And Conditions And Accept it Before Registering' );
}

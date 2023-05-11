
import 'custom_error.dart';

class NotReadTermsAndConditionError extends CustomError {
  NotReadTermsAndConditionError() :super(imagePath:'',errorMessage:'Please Read Our Terms And Conditions And Accept it Before Registering' );
}

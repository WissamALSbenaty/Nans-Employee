import 'package:nans/src/Data/repositories/abstract/i_logger.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ILogger)
class Logger extends ILogger{


  @override
  Future<void> initLogger()async{
  }
  @override
  Future<void> logCritical({required String className,required Exception exception})async{

  }

  @override
  Future<void> logInfo({required String eventName, required Map<String, dynamic> parameters})async {

  }

}
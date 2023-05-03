
abstract class ILogger {

  Future<void> initLogger();
  Future<void> logCritical({required String className,required Exception exception});
  Future<void> logInfo({required String eventName,required Map<String,dynamic> parameters});

}
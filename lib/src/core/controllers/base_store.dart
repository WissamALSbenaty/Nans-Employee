import 'package:nans/src/Data/Errors/core_errors.dart';
import 'package:nans/src/Data/Errors/custom_error.dart';
import 'package:nans/src/Data/repositories/abstract/i_logger.dart';
import 'package:nans/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:nans/src/core/util/enums.dart';
import 'package:mobx/mobx.dart';

part 'base_store.g.dart';

class BaseStoreController extends BaseStoreControllerBase with _$BaseStoreController{
  BaseStoreController(super.logger,{super.isLazyStore});
}

abstract class BaseStoreControllerBase with Store {

  final bool isLazyStore;
  final ILogger logger;
  BaseStoreControllerBase(this.logger,{this.isLazyStore=false});

  @observable
  CustomError? error;

  @observable
  bool isLoading=false;

  @computed
  bool get hasData=> error==null && !isLoading;

  @observable
  bool isStillLazy=true;

  @action
  Future<void> onInit()async{}

  @action
  Future<bool> runStorePrimaryFunction(Future  function, {Function? onCatchError})async{
    try{
      isLoading=true;
      await function;
      return true;
    }
    on CustomError catch (e){
      if(onCatchError!=null) {
        onCatchError();
      }
      if(e is ServerError) {
        await logger.logCritical(className:  runtimeType.toString(),exception:  e);
      }
      error=e;
      return false;
    }
    on Exception catch(e){
      error=ServerError();
      await logger.logCritical(className:  runtimeType.toString(),exception:  e);
      return false;
    }
    finally{
      isLoading=false;
    }
  }

  @action
  Future<bool> runStoreSecondaryFunction(Future function, {Function? onCatchError})async{
    try{
      await function;
      return true;
    }
    on CustomError catch (e){
      if(onCatchError!=null) {
        onCatchError();
      }
      BottomSnackBar.show(e.errorMessage,ToastType.error);
      if(e is ServerError) {
        await logger.logCritical(className:  runtimeType.toString(),exception:  e);
      }
      return false;
    }
    on Exception catch(e){
      await logger.logCritical(className:  runtimeType.toString(),exception:  e);
      return false;
    }
  }

}
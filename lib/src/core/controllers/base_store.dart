import 'package:etloob/src/core/Data/Errors/core_errors.dart';
import 'package:etloob/src/core/Data/Errors/custom_error.dart';
import 'package:etloob/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:etloob/src/core/util/enums.dart';
import 'package:mobx/mobx.dart';

part 'base_store.g.dart';

class BaseStoreController extends BaseStoreControllerBase with _$BaseStoreController{
    BaseStoreController({super.isLazyStore});
}

abstract class BaseStoreControllerBase with Store {

  final bool isLazyStore;
  BaseStoreControllerBase({this.isLazyStore=false});

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

      error=e;
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

      BottomSnackBar.show(e.errorMessage,ToastType.error,onRetry:
      e is InternetConnectionError? ()=>runStoreSecondaryFunction(function,onCatchError: onCatchError):null);
      return false;
    }
  }

}
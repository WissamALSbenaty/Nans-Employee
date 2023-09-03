


import 'package:nans/src/core/controllers/base_controller.dart';
import 'package:mobx/mobx.dart';

part 'custom_data_loader.g.dart';

abstract class CustomDataLoader<T> extends CustomDataLoaderBase<T> with _$CustomDataLoader {
  CustomDataLoader(super.logger,{super.isLazyController});

}

abstract class CustomDataLoaderBase<T> extends BaseController with Store {

  Future<T> dataGetter();

  CustomDataLoaderBase(super.logger,{super.isLazyController}){
    if(!isLazyController) {
      loadData();
    }
  }

  @observable
  T? data;

  @action
  Future<void> loadData()=>runStorePrimaryFunction(Future(()async{
    print('Wiso before init');
        await onInit();
    print('Wiso after init');
    data = await dataGetter();

      }));


}
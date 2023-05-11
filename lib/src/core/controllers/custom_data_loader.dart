


import 'package:nans/src/core/controllers/base_store.dart';
import 'package:mobx/mobx.dart';

part 'custom_data_loader.g.dart';

class CustomDataLoader<T> extends CustomDataLoaderBase<T> with _$CustomDataLoader {
  CustomDataLoader(super.logger,{required super.dataGetter});

}

abstract class CustomDataLoaderBase<T> extends BaseStoreController with Store {

  final Future<T> Function() dataGetter;

  CustomDataLoaderBase(super.logger,{required this.dataGetter,}){
    if(!isLazyStore) {
      loadData();
    }
  }

  @observable
  T? data;

  @action
  Future<void> loadData()=>runStorePrimaryFunction(Future(()async{

    await onInit();
    data = await dataGetter();
  }));


}
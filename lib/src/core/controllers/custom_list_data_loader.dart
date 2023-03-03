


import 'package:etloob/src/core/Data/Errors/custom_error.dart';
import 'package:etloob/src/core/controllers/base_store.dart';
import 'package:mobx/mobx.dart';

part 'custom_list_data_loader.g.dart';

abstract class CustomListDataLoader<T> extends CustomListDataLoaderBase<T> with _$CustomListDataLoader{

    CustomListDataLoader({required super.dataGetter,required super.emptyDataError,super.isLazyStore});
}

abstract class CustomListDataLoaderBase<T> extends BaseStoreController  with Store  {

  final Future<List<T>> Function() dataGetter;
  final CustomError emptyDataError;

  CustomListDataLoaderBase({required this.emptyDataError, required this.dataGetter,super.isLazyStore}){
    if(!isLazyStore) {
      loadData();
    }
  }



  @observable
  ObservableList<T> dataList=ObservableList();


  @action
  Future<void> loadData()async{
    try{

  if(error!=null) {
    return ;
  }

    onInit();
    isLoading=true;
    dataList= ObservableList.of( await dataGetter());
    if(dataList.isEmpty) {
      throw emptyDataError;
      }
    }
    on CustomError catch (e){
      error=e;
    }
    finally{
      isLoading=false;
    }
  }

}
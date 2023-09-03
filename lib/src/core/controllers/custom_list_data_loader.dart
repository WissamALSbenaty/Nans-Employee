


import 'package:nans/src/Data/Errors/custom_error.dart';
import 'package:nans/src/core/controllers/base_controller.dart';
import 'package:mobx/mobx.dart';

part 'custom_list_data_loader.g.dart';

abstract class CustomListDataLoader<T> extends CustomListDataLoaderBase<T> with _$CustomListDataLoader{

  CustomListDataLoader(super.logger,{required super.emptyDataError,super.isLazyController});
}

abstract class CustomListDataLoaderBase<T> extends BaseController  with Store  {

  Future<List<T>> dataGetter() ;
  final CustomError emptyDataError;

  CustomListDataLoaderBase(super.logger,{required this.emptyDataError, super.isLazyController}){
    if(!isLazyController) {
      loadData();
    }
  }
  @observable
  ObservableList<T> dataList=ObservableList();

  @action
  Future<void> loadData()=>runStorePrimaryFunction(Future(()async{
      onInit();

      dataList= ObservableList.of( await dataGetter());
      if(dataList.isEmpty) {
        throw emptyDataError;
    }
  }));

}
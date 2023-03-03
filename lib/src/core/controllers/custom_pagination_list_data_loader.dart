


import 'package:etloob/src/core/Data/Errors/custom_error.dart';
import 'package:etloob/src/core/Data/models/pagination_data_model.dart';
import 'package:etloob/src/core/controllers/base_store.dart';
import 'package:etloob/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:etloob/src/core/util/enums.dart';
import 'package:mobx/mobx.dart';

part 'custom_pagination_list_data_loader.g.dart';

abstract class CustomPaginationListDataLoader<T> extends CustomPaginationListDataLoaderBase<T> with _$CustomPaginationListDataLoader {
  CustomPaginationListDataLoader({required super.emptyDataError, required super.dataGetter,super.isLazyStore});

}

abstract class CustomPaginationListDataLoaderBase<T> extends BaseStoreController with Store{


  Future<PaginationDataModel<T>> Function(int page) dataGetter;
  final CustomError emptyDataError;

  CustomPaginationListDataLoaderBase({required this.emptyDataError, required this.dataGetter,super.isLazyStore}){
    initializeLoader();
  }
  @action
  Future<void> initializeLoader()async{
  if(!isLazyStore) {
  await onInit();
  await loadData();
  }
}

  int pageNumber=0;


  @observable
  bool isLoadingMoreData=false;

  @observable
  bool canLoadMoreData=true;

  @observable
  ObservableList<T> dataList=ObservableList();


  @action
  Future<void> loadData()async{
    try{
    if(error!=null) {
      return ;
    }

    isLoading=true;
    canLoadMoreData=true;
    isLoadingMoreData=false;
    isStillLazy=false;
    pageNumber=0;

    PaginationDataModel<T> paginationData=await dataGetter(++pageNumber);
    canLoadMoreData=paginationData.canLoadMoreData;
    dataList= ObservableList.of( paginationData.items);
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


  @action
  Future<void> loadNextPage()async{
    if(isLoadingMoreData || !canLoadMoreData) {
      return ;
    }
      try{
        isLoadingMoreData=true;


        PaginationDataModel<T> paginationData=await dataGetter(++pageNumber);
        canLoadMoreData=paginationData.canLoadMoreData;
        List<T> newData= paginationData.items;
        dataList.addAll(newData);
      }
      on CustomError catch (e){
      BottomSnackBar.show(e.errorMessage, ToastType.error);
      }
      finally{
        isLoadingMoreData=false;
      }
  }

  @action
  void markAsDirtyLoader(){
    isStillLazy=true;
    error=null;
    dataList=ObservableList();
  }

}
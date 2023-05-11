


import 'package:nans/src/Data/Errors/core_errors.dart';
import 'package:nans/src/Data/Errors/custom_error.dart';
import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/core/controllers/base_store.dart';
import 'package:nans/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:nans/src/core/util/enums.dart';
import 'package:mobx/mobx.dart';

part 'custom_pagination_list_data_loader.g.dart';

abstract class CustomPaginationListDataLoader<T> extends CustomPaginationListDataLoaderBase<T> with _$CustomPaginationListDataLoader {
  CustomPaginationListDataLoader(super.logger,{super.isLazyStore});

}

abstract class CustomPaginationListDataLoaderBase<T> extends BaseStoreController with Store{


  Future<PaginationDataModel<T>> dataGetter (int page);

  CustomPaginationListDataLoaderBase(super.logger,{super.isLazyStore}){
    initializeLoader();
  }
  @action
  Future<void> initializeLoader()async{
    if(!isLazyStore) {
      isLoading=true;
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

      PaginationDataModel<T> paginationData=await dataGetter(pageNumber++);
      canLoadMoreData=paginationData.canLoadMoreData;
      dataList= ObservableList.of( paginationData.items);
      if(dataList.isEmpty) {
        throw EmptyItemsError();
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
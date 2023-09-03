


import 'package:nans/src/Data/Errors/core_errors.dart';
import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/core/controllers/base_controller.dart';
import 'package:mobx/mobx.dart';

part 'custom_pagination_list_data_loader.g.dart';

abstract class CustomPaginationListDataLoader<T> extends CustomPaginationListDataLoaderBase<T> with _$CustomPaginationListDataLoader {
  CustomPaginationListDataLoader(super.logger,{super.isLazyController});

}

abstract class CustomPaginationListDataLoaderBase<T> extends BaseController with Store{


  Future<PaginationDataModel<T>> dataGetter (int page);

  CustomPaginationListDataLoaderBase(super.logger,{super.isLazyController}){
    initializeLoader();
  }
  @action
  Future<void> initializeLoader()async{
    if(!isLazyController) {
      isLoading=true;
      error=null;
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
  Future<void> loadData()=>runStorePrimaryFunction(Future(()async{
      canLoadMoreData=true;
      isLoadingMoreData=false;
      isStillLazy=false;
      pageNumber=0;

      PaginationDataModel<T> paginationData=await dataGetter(pageNumber);
      canLoadMoreData=paginationData.items.isNotEmpty;
      dataList= ObservableList.of( paginationData.items);
      pageNumber++;
      if(dataList.isEmpty) {
        error=EmptyItemsError();
      }

  }));


  @action
  Future<void> loadNextPage()=>runStoreSecondaryFunction(Future(()async{
    if(isLoadingMoreData || !canLoadMoreData) {
      return ;
    }
    isLoadingMoreData=true;


      PaginationDataModel<T> paginationData=await dataGetter(++pageNumber);
      canLoadMoreData=paginationData.items.isNotEmpty;
      List<T> newData= paginationData.items;
      dataList.addAll(newData);
    isLoadingMoreData=false;
  }),onCatchError: (){isLoadingMoreData=false;});

  @action
  void markAsDirtyLoader(){
    isStillLazy=true;
    error=null;
    dataList=ObservableList();
  }

}
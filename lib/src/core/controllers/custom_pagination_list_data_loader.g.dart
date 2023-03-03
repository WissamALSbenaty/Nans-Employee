// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_pagination_list_data_loader.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CustomPaginationListDataLoader<T>
    on CustomPaginationListDataLoaderBase<T>, Store {
  late final _$isLoadingMoreDataAtom = Atom(
      name: 'CustomPaginationListDataLoaderBase.isLoadingMoreData',
      context: context);

  @override
  bool get isLoadingMoreData {
    _$isLoadingMoreDataAtom.reportRead();
    return super.isLoadingMoreData;
  }

  @override
  set isLoadingMoreData(bool value) {
    _$isLoadingMoreDataAtom.reportWrite(value, super.isLoadingMoreData, () {
      super.isLoadingMoreData = value;
    });
  }

  late final _$canLoadMoreDataAtom = Atom(
      name: 'CustomPaginationListDataLoaderBase.canLoadMoreData',
      context: context);

  @override
  bool get canLoadMoreData {
    _$canLoadMoreDataAtom.reportRead();
    return super.canLoadMoreData;
  }

  @override
  set canLoadMoreData(bool value) {
    _$canLoadMoreDataAtom.reportWrite(value, super.canLoadMoreData, () {
      super.canLoadMoreData = value;
    });
  }

  late final _$dataListAtom = Atom(
      name: 'CustomPaginationListDataLoaderBase.dataList', context: context);

  @override
  ObservableList<T> get dataList {
    _$dataListAtom.reportRead();
    return super.dataList;
  }

  @override
  set dataList(ObservableList<T> value) {
    _$dataListAtom.reportWrite(value, super.dataList, () {
      super.dataList = value;
    });
  }

  late final _$initializeLoaderAsyncAction = AsyncAction(
      'CustomPaginationListDataLoaderBase.initializeLoader',
      context: context);

  @override
  Future<void> initializeLoader() {
    return _$initializeLoaderAsyncAction.run(() => super.initializeLoader());
  }

  late final _$loadDataAsyncAction = AsyncAction(
      'CustomPaginationListDataLoaderBase.loadData',
      context: context);

  @override
  Future<void> loadData() {
    return _$loadDataAsyncAction.run(() => super.loadData());
  }

  late final _$loadNextPageAsyncAction = AsyncAction(
      'CustomPaginationListDataLoaderBase.loadNextPage',
      context: context);

  @override
  Future<void> loadNextPage() {
    return _$loadNextPageAsyncAction.run(() => super.loadNextPage());
  }

  late final _$CustomPaginationListDataLoaderBaseActionController =
      ActionController(
          name: 'CustomPaginationListDataLoaderBase', context: context);

  @override
  void markAsDirtyLoader() {
    final _$actionInfo =
        _$CustomPaginationListDataLoaderBaseActionController.startAction(
            name: 'CustomPaginationListDataLoaderBase.markAsDirtyLoader');
    try {
      return super.markAsDirtyLoader();
    } finally {
      _$CustomPaginationListDataLoaderBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoadingMoreData: ${isLoadingMoreData},
canLoadMoreData: ${canLoadMoreData},
dataList: ${dataList}
    ''';
  }
}

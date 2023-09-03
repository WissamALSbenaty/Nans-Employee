// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_list_data_loader.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CustomListDataLoader<T> on CustomListDataLoaderBase<T>, Store {
  late final _$dataListAtom =
      Atom(name: 'CustomListDataLoaderBase.dataList', context: context);

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

  late final _$CustomListDataLoaderBaseActionController =
      ActionController(name: 'CustomListDataLoaderBase', context: context);

  @override
  Future<void> loadData() {
    final _$actionInfo = _$CustomListDataLoaderBaseActionController.startAction(
        name: 'CustomListDataLoaderBase.loadData');
    try {
      return super.loadData();
    } finally {
      _$CustomListDataLoaderBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dataList: ${dataList}
    ''';
  }
}

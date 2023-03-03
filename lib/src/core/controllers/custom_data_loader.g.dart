// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_data_loader.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CustomDataLoader<T> on CustomDataLoaderBase<T>, Store {
  late final _$dataAtom =
      Atom(name: 'CustomDataLoaderBase.data', context: context);

  @override
  T? get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(T? value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  late final _$CustomDataLoaderBaseActionController =
      ActionController(name: 'CustomDataLoaderBase', context: context);

  @override
  Future<void> loadData() {
    final _$actionInfo = _$CustomDataLoaderBaseActionController.startAction(
        name: 'CustomDataLoaderBase.loadData');
    try {
      return super.loadData();
    } finally {
      _$CustomDataLoaderBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
data: ${data}
    ''';
  }
}

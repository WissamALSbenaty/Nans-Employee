// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SearchController on SearchControllerBase, Store {
  late final _$searchStringAtom =
      Atom(name: 'SearchControllerBase.searchString', context: context);

  @override
  String? get searchString {
    _$searchStringAtom.reportRead();
    return super.searchString;
  }

  @override
  set searchString(String? value) {
    _$searchStringAtom.reportWrite(value, super.searchString, () {
      super.searchString = value;
    });
  }

  late final _$searchStringChangesAsyncAction =
      AsyncAction('SearchControllerBase.searchStringChanges', context: context);

  @override
  Future<void> searchStringChanges(String newSearchString) {
    return _$searchStringChangesAsyncAction
        .run(() => super.searchStringChanges(newSearchString));
  }

  late final _$deleteSingleSearchAsyncAction =
      AsyncAction('SearchControllerBase.deleteSingleSearch', context: context);

  @override
  Future<void> deleteSingleSearch(String singleSearch) {
    return _$deleteSingleSearchAsyncAction
        .run(() => super.deleteSingleSearch(singleSearch));
  }

  late final _$clearAllHistoryAsyncAction =
      AsyncAction('SearchControllerBase.clearAllHistory', context: context);

  @override
  Future<void> clearAllHistory() {
    return _$clearAllHistoryAsyncAction.run(() => super.clearAllHistory());
  }

  @override
  String toString() {
    return '''
searchString: ${searchString}
    ''';
  }
}

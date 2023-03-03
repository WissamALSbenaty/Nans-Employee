// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BaseStoreController on BaseStoreControllerBase, Store {
  Computed<bool>? _$hasDataComputed;

  @override
  bool get hasData => (_$hasDataComputed ??= Computed<bool>(() => super.hasData,
          name: 'BaseStoreControllerBase.hasData'))
      .value;

  late final _$errorAtom =
      Atom(name: 'BaseStoreControllerBase.error', context: context);

  @override
  CustomError? get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(CustomError? value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'BaseStoreControllerBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$isStillLazyAtom =
      Atom(name: 'BaseStoreControllerBase.isStillLazy', context: context);

  @override
  bool get isStillLazy {
    _$isStillLazyAtom.reportRead();
    return super.isStillLazy;
  }

  @override
  set isStillLazy(bool value) {
    _$isStillLazyAtom.reportWrite(value, super.isStillLazy, () {
      super.isStillLazy = value;
    });
  }

  late final _$onInitAsyncAction =
      AsyncAction('BaseStoreControllerBase.onInit', context: context);

  @override
  Future<void> onInit() {
    return _$onInitAsyncAction.run(() => super.onInit());
  }

  late final _$runStorePrimaryFunctionAsyncAction = AsyncAction(
      'BaseStoreControllerBase.runStorePrimaryFunction',
      context: context);

  @override
  Future<bool> runStorePrimaryFunction(Future<dynamic> function,
      {Function? onCatchError}) {
    return _$runStorePrimaryFunctionAsyncAction.run(() =>
        super.runStorePrimaryFunction(function, onCatchError: onCatchError));
  }

  late final _$runStoreSecondaryFunctionAsyncAction = AsyncAction(
      'BaseStoreControllerBase.runStoreSecondaryFunction',
      context: context);

  @override
  Future<bool> runStoreSecondaryFunction(Future<dynamic> function,
      {Function? onCatchError}) {
    return _$runStoreSecondaryFunctionAsyncAction.run(() =>
        super.runStoreSecondaryFunction(function, onCatchError: onCatchError));
  }

  @override
  String toString() {
    return '''
error: ${error},
isLoading: ${isLoading},
isStillLazy: ${isStillLazy},
hasData: ${hasData}
    ''';
  }
}

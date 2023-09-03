// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_request_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CurrentRequestController on CurrentRequestControllerBase, Store {
  late final _$pickNewRequestAsyncAction = AsyncAction(
      'CurrentRequestControllerBase.pickNewRequest',
      context: context);


  late final _$CurrentRequestControllerBaseActionController =
      ActionController(name: 'CurrentRequestControllerBase', context: context);

  @override
  void rejectStage({required String stageId}) {
    final _$actionInfo = _$CurrentRequestControllerBaseActionController
        .startAction(name: 'CurrentRequestControllerBase.rejectStage');
    try {
      return super.rejectStage(stageId: stageId);
    } finally {
      _$CurrentRequestControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void approveStage({required String stageId}) {
    final _$actionInfo = _$CurrentRequestControllerBaseActionController
        .startAction(name: 'CurrentRequestControllerBase.approveStage');
    try {
      return super.approveStage(stageId: stageId);
    } finally {
      _$CurrentRequestControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_details_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RequestDetailsController on RequestDetailsControllerBase, Store {
  late final _$RequestDetailsControllerBaseActionController =
      ActionController(name: 'RequestDetailsControllerBase', context: context);

  @override
  void rejectStage({required String stageId}) {
    final _$actionInfo = _$RequestDetailsControllerBaseActionController
        .startAction(name: 'RequestDetailsControllerBase.rejectStage');
    try {
      return super.rejectStage(stageId: stageId);
    } finally {
      _$RequestDetailsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void approveStage({required String stageId}) {
    final _$actionInfo = _$RequestDetailsControllerBaseActionController
        .startAction(name: 'RequestDetailsControllerBase.approveStage');
    try {
      return super.approveStage(stageId: stageId);
    } finally {
      _$RequestDetailsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

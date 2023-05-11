// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegisterController on RegisterControllerBase, Store {
  late final _$userGenderAtom =
      Atom(name: 'RegisterControllerBase.userGender', context: context);

  @override
  GenderType get userGender {
    _$userGenderAtom.reportRead();
    return super.userGender;
  }

  @override
  set userGender(GenderType value) {
    _$userGenderAtom.reportWrite(value, super.userGender, () {
      super.userGender = value;
    });
  }

  late final _$RegisterControllerBaseActionController =
      ActionController(name: 'RegisterControllerBase', context: context);

  @override
  void toggleGenderType() {
    final _$actionInfo = _$RegisterControllerBaseActionController.startAction(
        name: 'RegisterControllerBase.toggleGenderType');
    try {
      return super.toggleGenderType();
    } finally {
      _$RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userGender: ${userGender}
    ''';
  }
}

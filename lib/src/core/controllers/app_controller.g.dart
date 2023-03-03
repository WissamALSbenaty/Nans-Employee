// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppController on AppControllerBase, Store {
  late final _$appConfigModelAtom =
      Atom(name: 'AppControllerBase.appConfigModel', context: context);

  @override
  AppConfigModel? get appConfigModel {
    _$appConfigModelAtom.reportRead();
    return super.appConfigModel;
  }

  @override
  set appConfigModel(AppConfigModel? value) {
    _$appConfigModelAtom.reportWrite(value, super.appConfigModel, () {
      super.appConfigModel = value;
    });
  }

  late final _$userProfileModelAtom =
      Atom(name: 'AppControllerBase.userProfileModel', context: context);

  @override
  UserProfileModel? get userProfileModel {
    _$userProfileModelAtom.reportRead();
    return super.userProfileModel;
  }

  @override
  set userProfileModel(UserProfileModel? value) {
    _$userProfileModelAtom.reportWrite(value, super.userProfileModel, () {
      super.userProfileModel = value;
    });
  }

  late final _$currentUserAtom =
      Atom(name: 'AppControllerBase.currentUser', context: context);

  @override
  User? get currentUser {
    _$currentUserAtom.reportRead();
    return super.currentUser;
  }

  @override
  set currentUser(User? value) {
    _$currentUserAtom.reportWrite(value, super.currentUser, () {
      super.currentUser = value;
    });
  }

  late final _$applicationTranslationModelAtom = Atom(
      name: 'AppControllerBase.applicationTranslationModel', context: context);

  @override
  AppTranslationModel? get applicationTranslationModel {
    _$applicationTranslationModelAtom.reportRead();
    return super.applicationTranslationModel;
  }

  @override
  set applicationTranslationModel(AppTranslationModel? value) {
    _$applicationTranslationModelAtom
        .reportWrite(value, super.applicationTranslationModel, () {
      super.applicationTranslationModel = value;
    });
  }

  late final _$changeAppLanguageAsyncAction =
      AsyncAction('AppControllerBase.changeAppLanguage', context: context);

  @override
  Future<void> changeAppLanguage(BuildContext context) {
    return _$changeAppLanguageAsyncAction
        .run(() => super.changeAppLanguage(context));
  }

  late final _$loginAsyncAction =
      AsyncAction('AppControllerBase.login', context: context);

  @override
  Future<void> login(LoginModel loginModel) {
    return _$loginAsyncAction.run(() => super.login(loginModel));
  }

  late final _$registerAsyncAction =
      AsyncAction('AppControllerBase.register', context: context);

  @override
  Future<void> register(RegisterModel registerModel) {
    return _$registerAsyncAction.run(() => super.register(registerModel));
  }

  late final _$AppControllerBaseActionController =
      ActionController(name: 'AppControllerBase', context: context);

  @override
  Future<void> loadData() {
    final _$actionInfo = _$AppControllerBaseActionController.startAction(
        name: 'AppControllerBase.loadData');
    try {
      return super.loadData();
    } finally {
      _$AppControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<void> changePhoneNumber(String newPhoneNumber, BuildContext context) {
    final _$actionInfo = _$AppControllerBaseActionController.startAction(
        name: 'AppControllerBase.changePhoneNumber');
    try {
      return super.changePhoneNumber(newPhoneNumber, context);
    } finally {
      _$AppControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<void> changePassword(
      {required String oldPassword, required String newPassword}) {
    final _$actionInfo = _$AppControllerBaseActionController.startAction(
        name: 'AppControllerBase.changePassword');
    try {
      return super
          .changePassword(oldPassword: oldPassword, newPassword: newPassword);
    } finally {
      _$AppControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Future<void> logout() {
    final _$actionInfo = _$AppControllerBaseActionController.startAction(
        name: 'AppControllerBase.logout');
    try {
      return super.logout();
    } finally {
      _$AppControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
appConfigModel: ${appConfigModel},
userProfileModel: ${userProfileModel},
currentUser: ${currentUser},
applicationTranslationModel: ${applicationTranslationModel}
    ''';
  }
}

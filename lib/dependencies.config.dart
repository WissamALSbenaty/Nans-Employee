// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'src/core/controllers/app_controller.dart' as _i21;
import 'src/core/controllers/text_field_dialog_controller.dart' as _i9;
import 'src/core/presentation/arguments/confirm_phone_number_page_arguments.dart'
    as _i23;
import 'src/core/presentation/arguments/phone_number_submitting_arguments.dart'
    as _i20;
import 'src/core/presentation/arguments/request_details_page_arguments.dart'
    as _i28;
import 'src/core/presentation/arguments/submit_new_password_arguments.dart'
    as _i18;
import 'src/core/util/localization_manager.dart' as _i7;
import 'src/core/util/notification_manager.dart' as _i8;
import 'src/Data/api_helper.dart' as _i10;
import 'src/Data/Errors/errors_factory.dart' as _i4;
import 'src/Data/local_database_tables/app_database.dart' as _i3;
import 'src/Data/repositories/abstract/i_auth_repository.dart' as _i12;
import 'src/Data/repositories/abstract/i_logger.dart' as _i5;
import 'src/Data/repositories/abstract/i_requests_repository.dart' as _i24;
import 'src/Data/repositories/abstract/i_utils_repository.dart' as _i14;
import 'src/Data/repositories/concret/auth_repository.dart' as _i13;
import 'src/Data/repositories/concret/logger.dart' as _i6;
import 'src/Data/repositories/concret/requests_repository.dart' as _i25;
import 'src/Data/repositories/concret/utils_repotsitory.dart' as _i15;
import 'src/features/auth/controllers/confirm_phone_number_controller.dart'
    as _i22;
import 'src/features/auth/controllers/login_store.dart' as _i26;
import 'src/features/auth/controllers/submitting_new_password_controller.dart'
    as _i17;
import 'src/features/auth/controllers/submitting_phone_number_controller.dart'
    as _i19;
import 'src/features/Profile/controllers/notifications_controller.dart' as _i16;
import 'src/features/request/controllers/change_stage_request_dialog_controller.dart'
    as _i11;
import 'src/features/request/controllers/current_request_controller.dart'
    as _i29;
import 'src/features/request/controllers/history_requests_controller.dart'
    as _i30;
import 'src/features/request/controllers/request_details_controller.dart'
    as _i27;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.AppDatabase>(_i3.AppDatabase());
  gh.singleton<_i4.ErrorsFactory>(_i4.ErrorsFactory());
  gh.singleton<_i5.ILogger>(_i6.Logger());
  gh.singleton<_i7.LocalizationManager>(_i7.LocalizationManager());
  gh.singleton<_i8.NotificationsManager>(_i8.NotificationsManager());
  gh.factoryParam<_i9.TextFieldDialogController, _i9.StringCallback, dynamic>((
    onSubmitDialog,
    _,
  ) =>
      _i9.TextFieldDialogController(
        onSubmitDialog,
        gh<_i5.ILogger>(),
      ));
  gh.singleton<_i10.ApiHelper>(_i10.ApiHelper(
    gh<_i4.ErrorsFactory>(),
    gh<_i7.LocalizationManager>(),
  ));
  gh.factoryParam<_i11.ChangeStageRequestDialogController, _i11.StringCallback,
      dynamic>((
    onSubmitDialog,
    _,
  ) =>
      _i11.ChangeStageRequestDialogController(
        onSubmitDialog,
        gh<_i5.ILogger>(),
      ));
  gh.singleton<_i12.IAuthRepository>(_i13.AuthRepository(
    gh<_i10.ApiHelper>(),
    gh<_i3.AppDatabase>(),
  ));
  gh.singleton<_i14.IUtilsRepository>(
      _i15.UtilsRepository(gh<_i10.ApiHelper>()));
  gh.factory<_i16.NotificationsController>(() => _i16.NotificationsController(
        gh<_i14.IUtilsRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factoryParam<_i17.SubmittingNewPasswordController,
      _i18.SubmitNewPasswordArguments, dynamic>((
    args,
    _,
  ) =>
      _i17.SubmittingNewPasswordController(
        args,
        gh<_i12.IAuthRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factoryParam<_i19.SubmittingPhoneNumberController,
      _i20.EmailSubmittingArguments, dynamic>((
    args,
    _,
  ) =>
      _i19.SubmittingPhoneNumberController(
        args,
        gh<_i12.IAuthRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.singleton<_i21.AppController>(_i21.AppController(
    gh<_i12.IAuthRepository>(),
    gh<_i14.IUtilsRepository>(),
    gh<_i3.AppDatabase>(),
    gh<_i7.LocalizationManager>(),
    gh<_i8.NotificationsManager>(),
    gh<_i5.ILogger>(),
  ));
  gh.factoryParam<_i22.ConfirmPhoneNumberController,
      _i23.ConfirmEmailPageArguments, dynamic>((
    args,
    _,
  ) =>
      _i22.ConfirmPhoneNumberController(
        args,
        gh<_i12.IAuthRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.singleton<_i24.IRequestsRepository>(_i25.RequestsRepository(
    gh<_i21.AppController>(),
    gh<_i10.ApiHelper>(),
  ));
  gh.factory<_i26.LoginController>(() => _i26.LoginController(
        gh<_i12.IAuthRepository>(),
        gh<_i21.AppController>(),
        gh<_i5.ILogger>(),
      ));
  gh.factoryParam<_i27.RequestDetailsController,
      _i28.RequestDetailsPageArguments, dynamic>((
    args,
    _,
  ) =>
      _i27.RequestDetailsController(
        args,
        gh<_i24.IRequestsRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factory<_i29.CurrentRequestController>(() => _i29.CurrentRequestController(
        gh<_i24.IRequestsRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factory<_i30.HistoryRequestsController>(
      () => _i30.HistoryRequestsController(
            gh<_i24.IRequestsRepository>(),
            gh<_i5.ILogger>(),
          ));
  return getIt;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'src/core/controllers/app_controller.dart' as _i17;
import 'src/core/controllers/search_controller.dart' as _i7;
import 'src/core/Data/api_helper.dart' as _i8;
import 'src/core/Data/Errors/errors_factory.dart' as _i4;
import 'src/core/Data/local_database_tables/app_database.dart' as _i3;
import 'src/core/Data/repositories/abstract/i_auth_repository.dart' as _i9;
import 'src/core/Data/repositories/abstract/i_utils_repository.dart' as _i11;
import 'src/core/Data/repositories/concret/auth_repository.dart' as _i10;
import 'src/core/Data/repositories/concret/utils_repotsitory.dart' as _i12;
import 'src/core/presentation/arguments/confirm_phone_number_page_arguments.dart'
    as _i19;
import 'src/core/presentation/arguments/phone_number_submitting_arguments.dart'
    as _i16;
import 'src/core/presentation/arguments/submit_new_password_arguments.dart'
    as _i14;
import 'src/core/util/localization_manager.dart' as _i5;
import 'src/core/util/notification_manager.dart' as _i6;
import 'src/features/auth/controllers/confirm_phone_number_controller.dart'
    as _i18;
import 'src/features/auth/controllers/login_store.dart' as _i20;
import 'src/features/auth/controllers/register_controller.dart' as _i21;
import 'src/features/auth/controllers/submitting_new_password_controller.dart'
    as _i13;
import 'src/features/auth/controllers/submitting_phone_number_controller.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.AppDatabase>(_i3.AppDatabase());
  gh.singleton<_i4.ErrorsFactory>(_i4.ErrorsFactory());
  gh.singleton<_i5.LocalizationManager>(_i5.LocalizationManager());
  gh.singleton<_i6.NotificationsManager>(_i6.NotificationsManager());
  gh.factory<_i7.SearchController>(
      () => _i7.SearchController(get<_i3.AppDatabase>()));
  gh.singleton<_i8.ApiHelper>(_i8.ApiHelper(get<_i4.ErrorsFactory>()));
  gh.singleton<_i9.IAuthRepository>(_i10.AuthRepository(
    get<_i3.AppDatabase>(),
    get<_i8.ApiHelper>(),
  ));
  gh.singleton<_i11.IUtilsRepository>(
      _i12.UtilsRepository(get<_i8.ApiHelper>()));
  gh.factoryParam<_i13.SubmittingNewPasswordController,
      _i14.SubmitNewPasswordArguments, dynamic>((
    args,
    _,
  ) =>
      _i13.SubmittingNewPasswordController(
        args,
        get<_i9.IAuthRepository>(),
      ));
  gh.factoryParam<_i15.SubmittingPhoneNumberController,
      _i16.PhoneNumberSubmittingArguments, dynamic>((
    args,
    _,
  ) =>
      _i15.SubmittingPhoneNumberController(
        args,
        get<_i9.IAuthRepository>(),
      ));
  gh.singleton<_i17.AppController>(_i17.AppController(
    get<_i9.IAuthRepository>(),
    get<_i11.IUtilsRepository>(),
    get<_i3.AppDatabase>(),
    get<_i5.LocalizationManager>(),
  ));
  gh.factoryParam<_i18.ConfirmPhoneNumberController,
      _i19.ConfirmPhoneNumberPageArguments, dynamic>((
    args,
    _,
  ) =>
      _i18.ConfirmPhoneNumberController(
        args,
        get<_i9.IAuthRepository>(),
      ));
  gh.factory<_i20.LoginController>(() => _i20.LoginController(
        get<_i9.IAuthRepository>(),
        get<_i17.AppController>(),
      ));
  gh.factory<_i21.RegisterController>(() => _i21.RegisterController(
        get<_i17.AppController>(),
        get<_i9.IAuthRepository>(),
      ));
  return get;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/cupertino.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'src/core/controllers/app_localization_controller/app_localization_bloc.dart'
    as _i10;
import 'src/core/controllers/confirm_phone_number_controller/confirm_phone_number_bloc.dart'
    as _i21;
import 'src/core/controllers/submitting_phone_number_controller/submitting_phone_number_bloc.dart'
    as _i19;
import 'src/core/Data/api_helper.dart' as _i9;
import 'src/core/Data/Errors/errors_factory.dart' as _i6;
import 'src/core/Data/local_database_tables/app_database.dart' as _i4;
import 'src/core/Data/repositories/abstract/i_auth_repository.dart' as _i12;
import 'src/core/Data/repositories/abstract/i_utils_repository.dart' as _i14;
import 'src/core/Data/repositories/concret/auth_repository.dart' as _i13;
import 'src/core/Data/repositories/concret/utils_repotsitory.dart' as _i15;
import 'src/core/presentation/page_arguments/confirm_phone_number_page_arguments.dart'
    as _i22;
import 'src/core/presentation/page_arguments/phone_number_submitting_arguments.dart'
    as _i20;
import 'src/core/util/analytics_manager.dart' as _i3;
import 'src/core/util/deep_linker_manager.dart' as _i5;
import 'src/core/util/localization_manager.dart' as _i7;
import 'src/core/util/notification_manager.dart' as _i8;
import 'src/features/auth/controllers/login_controller/login_bloc.dart' as _i16;
import 'src/features/auth/controllers/register_controller/register_bloc.dart'
    as _i17;
import 'src/features/auth/controllers/submitting_new_password_controller/submitting_new_password_bloc.dart'
    as _i18; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.AnalyticsManager>(_i3.AnalyticsManager());
  gh.singleton<_i4.AppDatabase>(_i4.AppDatabase());
  gh.singleton<_i5.DeepLinkerManager>(_i5.DeepLinkerManager());
  gh.singleton<_i6.ErrorsFactory>(_i6.ErrorsFactory());
  gh.singleton<_i7.LocalizationManager>(_i7.LocalizationManager());
  gh.singleton<_i8.NotificationsManager>(_i8.NotificationsManager());
  gh.singleton<_i9.ApiHelper>(_i9.ApiHelper(get<_i6.ErrorsFactory>()));
  gh.factoryParam<_i10.AppLocalizationBloc, _i11.BuildContext, dynamic>(
      (context, _) =>
          _i10.AppLocalizationBloc(context, get<_i7.LocalizationManager>()));
  gh.singleton<_i12.IAuthRepository>(_i13.AuthRepository(
      get<_i3.AnalyticsManager>(),
      get<_i4.AppDatabase>(),
      get<_i9.ApiHelper>()));
  gh.singleton<_i14.IUtilsRepository>(
      _i15.UtilsRepository(get<_i9.ApiHelper>()));
  gh.factory<_i16.LoginBloc>(() => _i16.LoginBloc(get<_i12.IAuthRepository>()));
  gh.factory<_i17.RegisterBloc>(
      () => _i17.RegisterBloc(get<_i12.IAuthRepository>()));
  gh.factoryParam<_i18.SubmittingNewPasswordBloc, String, dynamic>((phoneNumber,
          _) =>
      _i18.SubmittingNewPasswordBloc(phoneNumber, get<_i12.IAuthRepository>()));
  gh.factoryParam<_i19.SubmittingPhoneNumberBloc,
          _i20.PhoneNumberSubmittingArguments, dynamic>(
      (args, _) =>
          _i19.SubmittingPhoneNumberBloc(args, get<_i12.IAuthRepository>()));
  gh.factoryParam<_i21.ConfirmPhoneNumberBloc,
          _i22.ConfirmPhoneNumberPageArguments, dynamic>(
      (args, _) =>
          _i21.ConfirmPhoneNumberBloc(args, get<_i12.IAuthRepository>()));
  return get;
}

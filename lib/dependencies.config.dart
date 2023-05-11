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

import 'src/core/controllers/app_controller.dart' as _i33;
import 'src/core/presentation/arguments/confirm_phone_number_page_arguments.dart'
    as _i35;
import 'src/core/presentation/arguments/phone_number_submitting_arguments.dart'
    as _i32;
import 'src/core/presentation/arguments/submit_new_password_arguments.dart'
    as _i30;
import 'src/core/util/localization_manager.dart' as _i9;
import 'src/core/util/notification_manager.dart' as _i12;
import 'src/Data/api_helper.dart' as _i15;
import 'src/Data/Errors/errors_factory.dart' as _i4;
import 'src/Data/local_database_tables/app_database.dart' as _i3;
import 'src/Data/repositories/abstract/i_auth_repository.dart' as _i18;
import 'src/Data/repositories/abstract/i_logger.dart' as _i5;
import 'src/Data/repositories/abstract/i_nans_repository.dart' as _i7;
import 'src/Data/repositories/abstract/i_profile_repository.dart' as _i20;
import 'src/Data/repositories/abstract/i_requests_repository.dart' as _i22;
import 'src/Data/repositories/abstract/i_utils_repository.dart' as _i24;
import 'src/Data/repositories/concret/auth_repository.dart' as _i19;
import 'src/Data/repositories/concret/logger.dart' as _i6;
import 'src/Data/repositories/concret/nans_repository.dart' as _i8;
import 'src/Data/repositories/concret/profile_repository.dart' as _i21;
import 'src/Data/repositories/concret/requests_repository.dart' as _i23;
import 'src/Data/repositories/concret/utils_repotsitory.dart' as _i25;
import 'src/features/auth/controllers/confirm_phone_number_controller.dart'
    as _i34;
import 'src/features/auth/controllers/login_store.dart' as _i36;
import 'src/features/auth/controllers/register_controller.dart' as _i37;
import 'src/features/auth/controllers/submitting_new_password_controller.dart'
    as _i29;
import 'src/features/auth/controllers/submitting_phone_number_controller.dart'
    as _i31;
import 'src/features/details/controllers/department_details_controller.dart'
    as _i16;
import 'src/features/details/controllers/news_details_controller.dart' as _i11;
import 'src/features/details/controllers/service_details_controller.dart'
    as _i13;
import 'src/features/pagination_pages/controllers/departments_controllers.dart'
    as _i17;
import 'src/features/pagination_pages/controllers/news_controllers.dart'
    as _i10;
import 'src/features/pagination_pages/controllers/services_controllers.dart'
    as _i14;
import 'src/features/Profile/controllers/notifications_controller.dart' as _i26;
import 'src/features/Profile/controllers/social_media_controller.dart' as _i28;
import 'src/features/request/controllers/request_details_controller.dart'
    as _i38;
import 'src/features/request/controllers/requests_controller.dart' as _i27;

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
  gh.singleton<_i7.INansRepository>(_i8.NansRepository(gh<dynamic>()));
  gh.singleton<_i9.LocalizationManager>(_i9.LocalizationManager());
  gh.factory<_i10.NewsController>(() => _i10.NewsController(
        gh<_i7.INansRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factoryParam<_i11.NewsDetailsController, String, dynamic>((
    newsId,
    _,
  ) =>
      _i11.NewsDetailsController(
        newsId,
        gh<_i7.INansRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.singleton<_i12.NotificationsManager>(_i12.NotificationsManager());
  gh.factoryParam<_i13.ServiceDetailsController, String, dynamic>((
    newsId,
    _,
  ) =>
      _i13.ServiceDetailsController(
        newsId,
        gh<_i7.INansRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factory<_i14.ServicesController>(() => _i14.ServicesController(
        gh<_i7.INansRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.singleton<_i15.ApiHelper>(_i15.ApiHelper(
    gh<_i4.ErrorsFactory>(),
    gh<_i9.LocalizationManager>(),
  ));
  gh.factoryParam<_i16.DepartmentDetailsController, String, dynamic>((
    newsId,
    _,
  ) =>
      _i16.DepartmentDetailsController(
        newsId,
        gh<_i7.INansRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factory<_i17.DepartmentsController>(() => _i17.DepartmentsController(
        gh<_i7.INansRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.singleton<_i18.IAuthRepository>(_i19.AuthRepository(
    gh<_i15.ApiHelper>(),
    gh<_i3.AppDatabase>(),
  ));
  gh.singleton<_i20.IProfileRepository>(
      _i21.ProfileRepository(gh<_i15.ApiHelper>()));
  gh.singleton<_i22.IRequestsRepository>(
      _i23.RequestsRepository(gh<_i15.ApiHelper>()));
  gh.singleton<_i24.IUtilsRepository>(
      _i25.UtilsRepository(gh<_i15.ApiHelper>()));
  gh.factory<_i26.NotificationsController>(() => _i26.NotificationsController(
        gh<_i20.IProfileRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factory<_i27.RequestsController>(() => _i27.RequestsController(
        gh<_i5.ILogger>(),
        gh<_i22.IRequestsRepository>(),
      ));
  gh.factory<_i28.SocialMediaController>(() => _i28.SocialMediaController(
        gh<_i5.ILogger>(),
        gh<_i20.IProfileRepository>(),
      ));
  gh.factoryParam<_i29.SubmittingNewPasswordController,
      _i30.SubmitNewPasswordArguments, dynamic>((
    args,
    _,
  ) =>
      _i29.SubmittingNewPasswordController(
        args,
        gh<_i18.IAuthRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factoryParam<_i31.SubmittingPhoneNumberController,
      _i32.EmailSubmittingArguments, dynamic>((
    args,
    _,
  ) =>
      _i31.SubmittingPhoneNumberController(
        args,
        gh<_i18.IAuthRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.singleton<_i33.AppController>(_i33.AppController(
    gh<_i18.IAuthRepository>(),
    gh<_i24.IUtilsRepository>(),
    gh<_i3.AppDatabase>(),
    gh<_i9.LocalizationManager>(),
    gh<_i5.ILogger>(),
  ));
  gh.factoryParam<_i34.ConfirmPhoneNumberController,
      _i35.ConfirmEmailPageArguments, dynamic>((
    args,
    _,
  ) =>
      _i34.ConfirmPhoneNumberController(
        args,
        gh<_i18.IAuthRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factory<_i36.LoginController>(() => _i36.LoginController(
        gh<_i18.IAuthRepository>(),
        gh<_i33.AppController>(),
        gh<_i5.ILogger>(),
      ));
  gh.factory<_i37.RegisterController>(() => _i37.RegisterController(
        gh<_i33.AppController>(),
        gh<_i18.IAuthRepository>(),
        gh<_i5.ILogger>(),
      ));
  gh.factoryParam<_i38.RequestDetailsController, int, dynamic>((
    requestId,
    _,
  ) =>
      _i38.RequestDetailsController(
        requestId,
        gh<_i22.IRequestsRepository>(),
        gh<_i33.AppController>(),
        gh<_i5.ILogger>(),
      ));
  return getIt;
}

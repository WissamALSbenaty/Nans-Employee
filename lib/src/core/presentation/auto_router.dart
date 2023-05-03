import 'package:auto_route/auto_route.dart';
import 'package:etloob/src/core/presentation/arguments/confirm_phone_number_page_arguments.dart';
import 'package:etloob/src/core/presentation/arguments/phone_number_submitting_arguments.dart';
import 'package:etloob/src/core/presentation/arguments/submit_new_password_arguments.dart';
import 'package:etloob/src/features/Home/presentation/pages/home_page.dart';
import 'package:etloob/src/features/Profile/presentation/pages/edit_account_page.dart';
import 'package:etloob/src/features/Profile/presentation/pages/my_profile_page.dart';
import 'package:etloob/src/features/Profile/presentation/pages/notifications_page.dart';
import 'package:etloob/src/features/Profile/presentation/pages/settings_page.dart';
import 'package:etloob/src/features/Search/presentation/pages/search_page.dart';
import 'package:etloob/src/features/auth/presentation/pages/confirm_phone_number_page.dart';
import 'package:etloob/src/features/auth/presentation/pages/login_page.dart';
import 'package:etloob/src/features/auth/presentation/pages/sign_up_page.dart';
import 'package:etloob/src/features/auth/presentation/pages/submit_new_password_page.dart';
import 'package:etloob/src/features/auth/presentation/pages/submit_phone_number_page.dart';
import 'package:etloob/src/features/intro/presentation/pages/onboarding_page.dart';
import 'package:etloob/src/features/intro/presentation/pages/splash_screen.dart';
import 'package:flutter/material.dart';

part 'auto_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: SignUpRoute.page),
    AutoRoute(page: OnBoardingRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: ConfirmPhoneNumberRoute.page),
    AutoRoute(page: SubmitNewPasswordRoute.page),
    AutoRoute(page: SubmitPhoneNumberRoute.page),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: MyProfileRoute.page),
    AutoRoute(page: SettingsRoute.page),
    AutoRoute(page: EditAccountRoute.page),
    AutoRoute(page: NotificationsRoute.page),
    AutoRoute(page: SearchRoute.page),];

}


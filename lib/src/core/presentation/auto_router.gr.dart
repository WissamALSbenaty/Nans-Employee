// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../../features/auth/presentation/pages/confirm_phone_number_page.dart'
    as _i4;
import '../../features/auth/presentation/pages/login_page.dart' as _i3;
import '../../features/auth/presentation/pages/sign_up_page.dart' as _i2;
import '../../features/auth/presentation/pages/submit_new_password_page.dart'
    as _i5;
import '../../features/auth/presentation/pages/submit_phone_number_page.dart'
    as _i6;
import '../../features/Home/presentation/pages/home_page.dart' as _i7;
import '../../features/intro/presentation/pages/splash_screen.dart' as _i1;
import '../../features/Profile/presentation/pages/edit_account_page.dart'
    as _i10;
import '../../features/Profile/presentation/pages/my_profile_page.dart' as _i8;
import '../../features/Profile/presentation/pages/settings_page.dart' as _i9;
import '../../features/Search/presentation/pages/search_page.dart' as _i11;
import 'arguments/confirm_phone_number_page_arguments.dart' as _i14;
import 'arguments/phone_number_submitting_arguments.dart' as _i16;
import 'arguments/submit_new_password_arguments.dart' as _i15;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    SignUpPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child:  _i2.SignUpPage(),
      );
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.LoginPage(key: args.key),
      );
    },
    ConfirmPhoneNumberPageRoute.name: (routeData) {
      final args = routeData.argsAs<ConfirmPhoneNumberPageRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.ConfirmPhoneNumberPage(
          key: args.key,
          args: args.args,
        ),
      );
    },
    SubmitNewPasswordPageRoute.name: (routeData) {
      final args = routeData.argsAs<SubmitNewPasswordPageRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.SubmitNewPasswordPage(
          key: args.key,
          args: args.args,
        ),
      );
    },
    SubmitPhoneNumberPageRoute.name: (routeData) {
      final args = routeData.argsAs<SubmitPhoneNumberPageRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.SubmitPhoneNumberPage(
          key: args.key,
          args: args.args,
        ),
      );
    },
    HomePageRoute.name: (routeData) {
      final args = routeData.argsAs<HomePageRouteArgs>(
          orElse: () => const HomePageRouteArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.HomePage(key: args.key),
      );
    },
    MyProfilePageRoute.name: (routeData) {
      final args = routeData.argsAs<MyProfilePageRouteArgs>(
          orElse: () => const MyProfilePageRouteArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.MyProfilePage(key: args.key),
      );
    },
    SettingsPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.SettingsPage(),
      );
    },
    EditAccountPageRoute.name: (routeData) {
      final args = routeData.argsAs<EditAccountPageRouteArgs>(
          orElse: () => const EditAccountPageRouteArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.EditAccountPage(key: args.key),
      );
    },
    SearchPageRoute.name: (routeData) {
      final args = routeData.argsAs<SearchPageRouteArgs>(
          orElse: () => const SearchPageRouteArgs());
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.SearchPage(key: args.key),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i12.RouteConfig(
          SignUpPageRoute.name,
          path: '/sign-up-page',
        ),
        _i12.RouteConfig(
          LoginPageRoute.name,
          path: '/login-page',
        ),
        _i12.RouteConfig(
          ConfirmPhoneNumberPageRoute.name,
          path: '/confirm-phone-number-page',
        ),
        _i12.RouteConfig(
          SubmitNewPasswordPageRoute.name,
          path: '/submit-new-password-page',
        ),
        _i12.RouteConfig(
          SubmitPhoneNumberPageRoute.name,
          path: '/submit-phone-number-page',
        ),
        _i12.RouteConfig(
          HomePageRoute.name,
          path: '/home-page',
        ),
        _i12.RouteConfig(
          MyProfilePageRoute.name,
          path: '/my-profile-page',
        ),
        _i12.RouteConfig(
          SettingsPageRoute.name,
          path: '/settings-page',
        ),
        _i12.RouteConfig(
          EditAccountPageRoute.name,
          path: '/edit-account-page',
        ),
        _i12.RouteConfig(
          SearchPageRoute.name,
          path: '/search-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i12.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.SignUpPage]
class SignUpPageRoute extends _i12.PageRouteInfo<void> {
  const SignUpPageRoute()
      : super(
          SignUpPageRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpPageRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginPageRoute extends _i12.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i13.Key? key})
      : super(
          LoginPageRoute.name,
          path: '/login-page',
          args: LoginPageRouteArgs(key: key),
        );

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.ConfirmPhoneNumberPage]
class ConfirmPhoneNumberPageRoute
    extends _i12.PageRouteInfo<ConfirmPhoneNumberPageRouteArgs> {
  ConfirmPhoneNumberPageRoute({
    _i13.Key? key,
    required _i14.ConfirmPhoneNumberPageArguments args,
  }) : super(
          ConfirmPhoneNumberPageRoute.name,
          path: '/confirm-phone-number-page',
          args: ConfirmPhoneNumberPageRouteArgs(
            key: key,
            args: args,
          ),
        );

  static const String name = 'ConfirmPhoneNumberPageRoute';
}

class ConfirmPhoneNumberPageRouteArgs {
  const ConfirmPhoneNumberPageRouteArgs({
    this.key,
    required this.args,
  });

  final _i13.Key? key;

  final _i14.ConfirmPhoneNumberPageArguments args;

  @override
  String toString() {
    return 'ConfirmPhoneNumberPageRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [_i5.SubmitNewPasswordPage]
class SubmitNewPasswordPageRoute
    extends _i12.PageRouteInfo<SubmitNewPasswordPageRouteArgs> {
  SubmitNewPasswordPageRoute({
    _i13.Key? key,
    required _i15.SubmitNewPasswordArguments args,
  }) : super(
          SubmitNewPasswordPageRoute.name,
          path: '/submit-new-password-page',
          args: SubmitNewPasswordPageRouteArgs(
            key: key,
            args: args,
          ),
        );

  static const String name = 'SubmitNewPasswordPageRoute';
}

class SubmitNewPasswordPageRouteArgs {
  const SubmitNewPasswordPageRouteArgs({
    this.key,
    required this.args,
  });

  final _i13.Key? key;

  final _i15.SubmitNewPasswordArguments args;

  @override
  String toString() {
    return 'SubmitNewPasswordPageRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [_i6.SubmitPhoneNumberPage]
class SubmitPhoneNumberPageRoute
    extends _i12.PageRouteInfo<SubmitPhoneNumberPageRouteArgs> {
  SubmitPhoneNumberPageRoute({
    _i13.Key? key,
    required _i16.PhoneNumberSubmittingArguments args,
  }) : super(
          SubmitPhoneNumberPageRoute.name,
          path: '/submit-phone-number-page',
          args: SubmitPhoneNumberPageRouteArgs(
            key: key,
            args: args,
          ),
        );

  static const String name = 'SubmitPhoneNumberPageRoute';
}

class SubmitPhoneNumberPageRouteArgs {
  const SubmitPhoneNumberPageRouteArgs({
    this.key,
    required this.args,
  });

  final _i13.Key? key;

  final _i16.PhoneNumberSubmittingArguments args;

  @override
  String toString() {
    return 'SubmitPhoneNumberPageRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [_i7.HomePage]
class HomePageRoute extends _i12.PageRouteInfo<HomePageRouteArgs> {
  HomePageRoute({_i13.Key? key})
      : super(
          HomePageRoute.name,
          path: '/home-page',
          args: HomePageRouteArgs(key: key),
        );

  static const String name = 'HomePageRoute';
}

class HomePageRouteArgs {
  const HomePageRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'HomePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.MyProfilePage]
class MyProfilePageRoute extends _i12.PageRouteInfo<MyProfilePageRouteArgs> {
  MyProfilePageRoute({_i13.Key? key})
      : super(
          MyProfilePageRoute.name,
          path: '/my-profile-page',
          args: MyProfilePageRouteArgs(key: key),
        );

  static const String name = 'MyProfilePageRoute';
}

class MyProfilePageRouteArgs {
  const MyProfilePageRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'MyProfilePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.SettingsPage]
class SettingsPageRoute extends _i12.PageRouteInfo<void> {
  const SettingsPageRoute()
      : super(
          SettingsPageRoute.name,
          path: '/settings-page',
        );

  static const String name = 'SettingsPageRoute';
}

/// generated route for
/// [_i10.EditAccountPage]
class EditAccountPageRoute
    extends _i12.PageRouteInfo<EditAccountPageRouteArgs> {
  EditAccountPageRoute({_i13.Key? key})
      : super(
          EditAccountPageRoute.name,
          path: '/edit-account-page',
          args: EditAccountPageRouteArgs(key: key),
        );

  static const String name = 'EditAccountPageRoute';
}

class EditAccountPageRouteArgs {
  const EditAccountPageRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'EditAccountPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i11.SearchPage]
class SearchPageRoute extends _i12.PageRouteInfo<SearchPageRouteArgs> {
  SearchPageRoute({_i13.Key? key})
      : super(
          SearchPageRoute.name,
          path: '/search-page',
          args: SearchPageRouteArgs(key: key),
        );

  static const String name = 'SearchPageRoute';
}

class SearchPageRouteArgs {
  const SearchPageRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'SearchPageRouteArgs{key: $key}';
  }
}

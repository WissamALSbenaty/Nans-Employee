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
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../../features/auth/presentation/pages/login_page.dart' as _i4;
import '../../features/auth/presentation/pages/sign_up_page.dart' as _i3;
import '../../features/auth/presentation/pages/submit_new_password_page.dart'
    as _i6;
import '../../features/Home/presentation/pages/home_page.dart' as _i8;
import '../../features/intro/presentation/pages/onboarding_page.dart' as _i2;
import '../../features/intro/presentation/pages/splash_screen.dart' as _i1;
import 'page_arguments/confirm_phone_number_page_arguments.dart' as _i12;
import 'page_arguments/custom_photo_viewer_page_arguments.dart' as _i16;
import 'page_arguments/home_page_navigation_arguments.dart' as _i15;
import 'page_arguments/phone_number_submitting_arguments.dart' as _i14;
import 'page_arguments/submit_new_password_arguments.dart' as _i13;
import 'pages/confirm_phone_number_page.dart' as _i5;
import 'pages/custom_photo_viewer_page.dart' as _i9;
import 'pages/submit_phone_number_page.dart' as _i7;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    OnBoardingPageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.OnBoardingPage());
    },
    SignUpPageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignUpPage());
    },
    LoginPageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.LoginPage());
    },
    ConfirmPhoneNumberPageRoute.name: (routeData) {
      final args = routeData.argsAs<ConfirmPhoneNumberPageRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.ConfirmPhoneNumberPage(key: args.key, args: args.args));
    },
    SubmitNewPasswordPageRoute.name: (routeData) {
      final args = routeData.argsAs<SubmitNewPasswordPageRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.SubmitNewPasswordPage(key: args.key, args: args.args));
    },
    SubmitPhoneNumberPageRoute.name: (routeData) {
      final args = routeData.argsAs<SubmitPhoneNumberPageRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.SubmitPhoneNumberPage(key: args.key, args: args.args));
    },
    HomePageRoute.name: (routeData) {
      final args = routeData.argsAs<HomePageRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.HomePage(args: args.args, key: args.key));
    },
    CustomPhotoViewerPageRoute.name: (routeData) {
      final args = routeData.argsAs<CustomPhotoViewerPageRouteArgs>();
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.CustomPhotoViewerPage(key: args.key, args: args.args));
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i10.RouteConfig(OnBoardingPageRoute.name, path: '/on-boarding-page'),
        _i10.RouteConfig(SignUpPageRoute.name, path: '/sign-up-page'),
        _i10.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i10.RouteConfig(ConfirmPhoneNumberPageRoute.name,
            path: '/confirm-phone-number-page'),
        _i10.RouteConfig(SubmitNewPasswordPageRoute.name,
            path: '/submit-new-password-page'),
        _i10.RouteConfig(SubmitPhoneNumberPageRoute.name,
            path: '/submit-phone-number-page'),
        _i10.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i10.RouteConfig(CustomPhotoViewerPageRoute.name,
            path: '/custom-photo-viewer-page')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i10.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.OnBoardingPage]
class OnBoardingPageRoute extends _i10.PageRouteInfo<void> {
  const OnBoardingPageRoute()
      : super(OnBoardingPageRoute.name, path: '/on-boarding-page');

  static const String name = 'OnBoardingPageRoute';
}

/// generated route for
/// [_i3.SignUpPage]
class SignUpPageRoute extends _i10.PageRouteInfo<void> {
  const SignUpPageRoute() : super(SignUpPageRoute.name, path: '/sign-up-page');

  static const String name = 'SignUpPageRoute';
}

/// generated route for
/// [_i4.LoginPage]
class LoginPageRoute extends _i10.PageRouteInfo<void> {
  const LoginPageRoute() : super(LoginPageRoute.name, path: '/login-page');

  static const String name = 'LoginPageRoute';
}

/// generated route for
/// [_i5.ConfirmPhoneNumberPage]
class ConfirmPhoneNumberPageRoute
    extends _i10.PageRouteInfo<ConfirmPhoneNumberPageRouteArgs> {
  ConfirmPhoneNumberPageRoute(
      {_i11.Key? key, required _i12.ConfirmPhoneNumberPageArguments args})
      : super(ConfirmPhoneNumberPageRoute.name,
            path: '/confirm-phone-number-page',
            args: ConfirmPhoneNumberPageRouteArgs(key: key, args: args));

  static const String name = 'ConfirmPhoneNumberPageRoute';
}

class ConfirmPhoneNumberPageRouteArgs {
  const ConfirmPhoneNumberPageRouteArgs({this.key, required this.args});

  final _i11.Key? key;

  final _i12.ConfirmPhoneNumberPageArguments args;

  @override
  String toString() {
    return 'ConfirmPhoneNumberPageRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [_i6.SubmitNewPasswordPage]
class SubmitNewPasswordPageRoute
    extends _i10.PageRouteInfo<SubmitNewPasswordPageRouteArgs> {
  SubmitNewPasswordPageRoute(
      {_i11.Key? key, required _i13.SubmitNewPasswordArguments args})
      : super(SubmitNewPasswordPageRoute.name,
            path: '/submit-new-password-page',
            args: SubmitNewPasswordPageRouteArgs(key: key, args: args));

  static const String name = 'SubmitNewPasswordPageRoute';
}

class SubmitNewPasswordPageRouteArgs {
  const SubmitNewPasswordPageRouteArgs({this.key, required this.args});

  final _i11.Key? key;

  final _i13.SubmitNewPasswordArguments args;

  @override
  String toString() {
    return 'SubmitNewPasswordPageRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [_i7.SubmitPhoneNumberPage]
class SubmitPhoneNumberPageRoute
    extends _i10.PageRouteInfo<SubmitPhoneNumberPageRouteArgs> {
  SubmitPhoneNumberPageRoute(
      {_i11.Key? key, required _i14.PhoneNumberSubmittingArguments args})
      : super(SubmitPhoneNumberPageRoute.name,
            path: '/submit-phone-number-page',
            args: SubmitPhoneNumberPageRouteArgs(key: key, args: args));

  static const String name = 'SubmitPhoneNumberPageRoute';
}

class SubmitPhoneNumberPageRouteArgs {
  const SubmitPhoneNumberPageRouteArgs({this.key, required this.args});

  final _i11.Key? key;

  final _i14.PhoneNumberSubmittingArguments args;

  @override
  String toString() {
    return 'SubmitPhoneNumberPageRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [_i8.HomePage]
class HomePageRoute extends _i10.PageRouteInfo<HomePageRouteArgs> {
  HomePageRoute({required _i15.HomePageNavigationArguments args, _i11.Key? key})
      : super(HomePageRoute.name,
            path: '/home-page', args: HomePageRouteArgs(args: args, key: key));

  static const String name = 'HomePageRoute';
}

class HomePageRouteArgs {
  const HomePageRouteArgs({required this.args, this.key});

  final _i15.HomePageNavigationArguments args;

  final _i11.Key? key;

  @override
  String toString() {
    return 'HomePageRouteArgs{args: $args, key: $key}';
  }
}

/// generated route for
/// [_i9.CustomPhotoViewerPage]
class CustomPhotoViewerPageRoute
    extends _i10.PageRouteInfo<CustomPhotoViewerPageRouteArgs> {
  CustomPhotoViewerPageRoute(
      {_i11.Key? key, required _i16.CustomPhotoViewerPageArguments args})
      : super(CustomPhotoViewerPageRoute.name,
            path: '/custom-photo-viewer-page',
            args: CustomPhotoViewerPageRouteArgs(key: key, args: args));

  static const String name = 'CustomPhotoViewerPageRoute';
}

class CustomPhotoViewerPageRouteArgs {
  const CustomPhotoViewerPageRouteArgs({this.key, required this.args});

  final _i11.Key? key;

  final _i16.CustomPhotoViewerPageArguments args;

  @override
  String toString() {
    return 'CustomPhotoViewerPageRouteArgs{key: $key, args: $args}';
  }
}

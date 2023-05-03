// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'auto_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ConfirmPhoneNumberRoute.name: (routeData) {
      final args = routeData.argsAs<ConfirmPhoneNumberRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ConfirmPhoneNumberPage(
          key: args.key,
          args: args.args,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LoginPage(key: args.key),
      );
    },
    SignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpPage(),
      );
    },
    SubmitNewPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<SubmitNewPasswordRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SubmitNewPasswordPage(
          key: args.key,
          args: args.args,
        ),
      );
    },
    SubmitPhoneNumberRoute.name: (routeData) {
      final args = routeData.argsAs<SubmitPhoneNumberRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SubmitPhoneNumberPage(
          key: args.key,
          args: args.args,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomePage(key: args.key),
      );
    },
    OnBoardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnBoardingPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    EditAccountRoute.name: (routeData) {
      final args = routeData.argsAs<EditAccountRouteArgs>(
          orElse: () => const EditAccountRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditAccountPage(key: args.key),
      );
    },
    MyProfileRoute.name: (routeData) {
      final args = routeData.argsAs<MyProfileRouteArgs>(
          orElse: () => const MyProfileRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MyProfilePage(key: args.key),
      );
    },
    NotificationsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NotificationsPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      final args = routeData.argsAs<SettingsRouteArgs>(
          orElse: () => const SettingsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SettingsPage(key: args.key),
      );
    },
    SearchRoute.name: (routeData) {
      final args = routeData.argsAs<SearchRouteArgs>(
          orElse: () => const SearchRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SearchPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [ConfirmPhoneNumberPage]
class ConfirmPhoneNumberRoute
    extends PageRouteInfo<ConfirmPhoneNumberRouteArgs> {
  ConfirmPhoneNumberRoute({
    Key? key,
    required ConfirmPhoneNumberPageArguments args,
    List<PageRouteInfo>? children,
  }) : super(
          ConfirmPhoneNumberRoute.name,
          args: ConfirmPhoneNumberRouteArgs(
            key: key,
            args: args,
          ),
          initialChildren: children,
        );

  static const String name = 'ConfirmPhoneNumberRoute';

  static const PageInfo<ConfirmPhoneNumberRouteArgs> page =
      PageInfo<ConfirmPhoneNumberRouteArgs>(name);
}

class ConfirmPhoneNumberRouteArgs {
  const ConfirmPhoneNumberRouteArgs({
    this.key,
    required this.args,
  });

  final Key? key;

  final ConfirmPhoneNumberPageArguments args;

  @override
  String toString() {
    return 'ConfirmPhoneNumberRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<LoginRouteArgs> page = PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SubmitNewPasswordPage]
class SubmitNewPasswordRoute extends PageRouteInfo<SubmitNewPasswordRouteArgs> {
  SubmitNewPasswordRoute({
    Key? key,
    required SubmitNewPasswordArguments args,
    List<PageRouteInfo>? children,
  }) : super(
          SubmitNewPasswordRoute.name,
          args: SubmitNewPasswordRouteArgs(
            key: key,
            args: args,
          ),
          initialChildren: children,
        );

  static const String name = 'SubmitNewPasswordRoute';

  static const PageInfo<SubmitNewPasswordRouteArgs> page =
      PageInfo<SubmitNewPasswordRouteArgs>(name);
}

class SubmitNewPasswordRouteArgs {
  const SubmitNewPasswordRouteArgs({
    this.key,
    required this.args,
  });

  final Key? key;

  final SubmitNewPasswordArguments args;

  @override
  String toString() {
    return 'SubmitNewPasswordRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [SubmitPhoneNumberPage]
class SubmitPhoneNumberRoute extends PageRouteInfo<SubmitPhoneNumberRouteArgs> {
  SubmitPhoneNumberRoute({
    Key? key,
    required PhoneNumberSubmittingArguments args,
    List<PageRouteInfo>? children,
  }) : super(
          SubmitPhoneNumberRoute.name,
          args: SubmitPhoneNumberRouteArgs(
            key: key,
            args: args,
          ),
          initialChildren: children,
        );

  static const String name = 'SubmitPhoneNumberRoute';

  static const PageInfo<SubmitPhoneNumberRouteArgs> page =
      PageInfo<SubmitPhoneNumberRouteArgs>(name);
}

class SubmitPhoneNumberRouteArgs {
  const SubmitPhoneNumberRouteArgs({
    this.key,
    required this.args,
  });

  final Key? key;

  final PhoneNumberSubmittingArguments args;

  @override
  String toString() {
    return 'SubmitPhoneNumberRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<HomeRouteArgs> page = PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [OnBoardingPage]
class OnBoardingRoute extends PageRouteInfo<void> {
  const OnBoardingRoute({List<PageRouteInfo>? children})
      : super(
          OnBoardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditAccountPage]
class EditAccountRoute extends PageRouteInfo<EditAccountRouteArgs> {
  EditAccountRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          EditAccountRoute.name,
          args: EditAccountRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EditAccountRoute';

  static const PageInfo<EditAccountRouteArgs> page =
      PageInfo<EditAccountRouteArgs>(name);
}

class EditAccountRouteArgs {
  const EditAccountRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'EditAccountRouteArgs{key: $key}';
  }
}

/// generated route for
/// [MyProfilePage]
class MyProfileRoute extends PageRouteInfo<MyProfileRouteArgs> {
  MyProfileRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MyProfileRoute.name,
          args: MyProfileRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MyProfileRoute';

  static const PageInfo<MyProfileRouteArgs> page =
      PageInfo<MyProfileRouteArgs>(name);
}

class MyProfileRouteArgs {
  const MyProfileRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'MyProfileRouteArgs{key: $key}';
  }
}

/// generated route for
/// [NotificationsPage]
class NotificationsRoute extends PageRouteInfo<void> {
  const NotificationsRoute({List<PageRouteInfo>? children})
      : super(
          NotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<SettingsRouteArgs> {
  SettingsRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SettingsRoute.name,
          args: SettingsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<SettingsRouteArgs> page =
      PageInfo<SettingsRouteArgs>(name);
}

class SettingsRouteArgs {
  const SettingsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SettingsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<SearchRouteArgs> page = PageInfo<SearchRouteArgs>(name);
}

class SearchRouteArgs {
  const SearchRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key}';
  }
}

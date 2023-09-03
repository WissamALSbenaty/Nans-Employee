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
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthPage(),
      );
    },
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
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
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
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    RequestDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<RequestDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RequestDetailsPage(
          args: args.args,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ConfirmPhoneNumberPage]
class ConfirmPhoneNumberRoute
    extends PageRouteInfo<ConfirmPhoneNumberRouteArgs> {
  ConfirmPhoneNumberRoute({
    Key? key,
    required ConfirmEmailPageArguments args,
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

  final ConfirmEmailPageArguments args;

  @override
  String toString() {
    return 'ConfirmPhoneNumberRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

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
    required EmailSubmittingArguments args,
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

  final EmailSubmittingArguments args;

  @override
  String toString() {
    return 'SubmitPhoneNumberRouteArgs{key: $key, args: $args}';
  }
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
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RequestDetailsPage]
class RequestDetailsRoute extends PageRouteInfo<RequestDetailsRouteArgs> {
  RequestDetailsRoute({
    required RequestDetailsPageArguments args,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          RequestDetailsRoute.name,
          args: RequestDetailsRouteArgs(
            args: args,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'RequestDetailsRoute';

  static const PageInfo<RequestDetailsRouteArgs> page =
      PageInfo<RequestDetailsRouteArgs>(name);
}

class RequestDetailsRouteArgs {
  const RequestDetailsRouteArgs({
    required this.args,
    this.key,
  });

  final RequestDetailsPageArguments args;

  final Key? key;

  @override
  String toString() {
    return 'RequestDetailsRouteArgs{args: $args, key: $key}';
  }
}

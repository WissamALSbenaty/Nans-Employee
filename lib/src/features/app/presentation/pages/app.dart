import 'package:easy_localization/easy_localization.dart';
import 'package:etloob/dependencies.dart';
import 'package:etloob/src/core/controllers/app_appearance_controller/app_appearance_bloc.dart';
import 'package:etloob/src/core/presentation/auto_router.gr.dart';
import 'package:etloob/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/util/analytics_manager.dart';
import 'package:etloob/src/core/util/localization_manager.dart';
import 'package:etloob/src/core/util/notification_manager.dart';
import 'package:etloob/src/core/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: const [

    ],
    child:Builder(
        builder: (ctx) {
        return     BlocProvider<AppAppearanceBloc>.value(value:  getIt<AppAppearanceBloc>(param1: ctx),
          child :BlocBuilder<AppAppearanceBloc,AppAppearanceState>(
            builder: (ctx, state) => const AppChild()));
      }
    ));
  }
}

class AppChild extends StatefulWidget {
  const AppChild({Key? key}) : super(key: key);

  @override
  AppChildState createState() => AppChildState();
}

class AppChildState extends State<AppChild> {
  final appRouter = AppRouter();

  bool isFirstDependency=true;


  @override
  void didChangeDependencies() {
    if(isFirstDependency)
      {
        isFirstDependency=false;

        getIt<NotificationsManager>().initFirebaseMessaging(context);
        EasyLocalization.logger.enableLevels=[];
        getIt<LocalizationManager>().isEnglishLanguage=EasyLocalization.of(context)?.locale == const Locale('en');

      }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: snackbarKey,

        routerDelegate: appRouter.delegate(
          navigatorObservers:getIt<AnalyticsManager>().getFirebaseTracer,
        ),
        routeInformationParser: appRouter.defaultRouteParser(),

        theme:getIt<ThemeManager>().getTheme(),


        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: EasyLocalization.of(context)?.currentLocale?? context.deviceLocale,


        builder: (context, child) {
          SizeConfig().init(context); // if restored then will ignore splash screen so it won't init
          return MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: 1,viewPadding: const EdgeInsets.all(0)),
          child: child!
          );
        },
        // home: const SplashPage(),
    );
  }
  @override
  void dispose() {
    super.dispose();
  }
}

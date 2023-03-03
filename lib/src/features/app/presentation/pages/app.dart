
import 'package:easy_localization/easy_localization.dart';
import 'package:etloob/dependencies.dart';
import 'package:etloob/src/core/controllers/app_controller.dart';
import 'package:etloob/src/core/presentation/auto_router.gr.dart';
import 'package:etloob/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/util/localization_manager.dart';
import 'package:etloob/src/core/util/mixins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with StateStoreCreatorMixin<AppController,App>{
  final appRouter = AppRouter();

  bool isFirstDependency=true;

  @override
  void didChangeDependencies() {
    if(isFirstDependency)
      {
        isFirstDependency=false;
        getIt<LocalizationManager>().isEnglishLanguage = EasyLocalization.of(context)?.locale == const Locale('en');
                EasyLocalization.logger.enableLevels=[];

      }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
        designSize: const Size(375, 812),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context , child) => /*MultiProvider(
        providers:[
          Provider<LocationsController>.value(value: getIt<LocationsController>()),
          Provider<NotificationsController>.value(value: getIt<NotificationsController>()),
        ],
          child:*/ MaterialApp.router(
              themeMode: ThemeMode.light,
              debugShowCheckedModeBanner: false,
              scaffoldMessengerKey: snackbarKey,

              routerDelegate: appRouter.delegate(),
              routeInformationParser: appRouter.defaultRouteParser(),

              theme: ThemeData(
                scaffoldBackgroundColor: AppColors.blue,
              ),


              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: EasyLocalization.of(context)?.currentLocale?? context.deviceLocale,


              builder: (context, child) {
                return MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: 1,viewPadding: const EdgeInsets.all(0)),
                child: child!
                );
              },
              // home: const SplashPage(),
          ),

    );
  }

}

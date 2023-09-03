
import 'package:easy_localization/easy_localization.dart';
import 'package:nans/dependencies.dart';
import 'package:nans/src/core/controllers/app_controller.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/snakebars/bottom_snack_bar.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/util/localization_manager.dart';
import 'package:nans/src/core/util/mixins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with StateControllerCreatorMixin<AppController,App>{

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
      builder: (context , child) =>  MaterialApp.router(
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: snackbarKey,
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),

        theme: ThemeData(
          scaffoldBackgroundColor: AppStyle.blue,
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

  @override
  void dispose() {
    createdController.dispose();
    super.dispose();
  }
}

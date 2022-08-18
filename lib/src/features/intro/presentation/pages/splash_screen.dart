import 'package:auto_route/auto_route.dart';
import 'package:etloob/dependencies.dart';
import 'package:etloob/src/Data/api_helper.dart';
import 'package:etloob/src/Data/local_database_tables/app_database.dart';
import 'package:etloob/src/core/presentation/auto_router.gr.dart';
import 'package:etloob/src/core/presentation/page_arguments/home_page_navigation_arguments.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    setNavigationTimer();
    super.initState();
  }

  void setNavigationTimer()async{
    try{
    User currentUser= await getIt<AppDatabase>().getUser();
    getIt<ApiHelper>().setToken(currentUser.token);

    await Future.delayed(const Duration(seconds: 3));

    if(currentUser.isLoggedInBefore) {
      AutoRouter.of(context).replace(   HomePageRoute(args: HomePageNavigationArguments()));
    } else {
      AutoRouter.of(context).replace( const OnBoardingPageRoute());
    }

    }
    catch(e){
      AutoRouter.of(context).replace( const OnBoardingPageRoute());
    }


  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(

        child: Text('Splach screen')
      ),
    );
  }
}

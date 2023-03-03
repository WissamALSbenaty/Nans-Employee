import 'package:auto_route/auto_route.dart';
import 'package:etloob/src/core/presentation/assets.dart';
import 'package:etloob/src/core/presentation/auto_router.gr.dart';
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
    await Future.delayed(const Duration(seconds: 3));

    AutoRouter.of(context).replace(   HomePageRoute());

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

      ),
    );
  }
}

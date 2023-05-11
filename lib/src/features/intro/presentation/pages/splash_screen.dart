import 'package:auto_route/auto_route.dart';
import 'package:nans/src/core/presentation/assets.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),

    )..addListener(() {
      if (_animationController.isCompleted) {
        _animationController.repeat(reverse: true);
      }});

    _animationController.forward();
    setNavigationTimer();
    super.initState();
  }

  void setNavigationTimer()async{
    await Future.delayed(const Duration(seconds: 3));

    AutoRouter.of(context).replace(   HomeRoute( ));

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
        child: FadeTransition(
        opacity: _animationController,
        child: SvgPicture.asset(
        Assets.sort,
        width: 200.r,
        height: 200.r,
    ),
    )));
  }
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

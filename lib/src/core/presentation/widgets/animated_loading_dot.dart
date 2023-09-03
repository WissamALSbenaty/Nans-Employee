import 'dart:math';

import 'package:nans/src/core/presentation/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedLoadingDot extends StatefulWidget {
  final double initialValue;

  const AnimatedLoadingDot({Key? key, required this.initialValue}) : super(key: key);

  factory AnimatedLoadingDot.beginning()=>const AnimatedLoadingDot(initialValue: 0);
  factory AnimatedLoadingDot.middle()=>const AnimatedLoadingDot(initialValue: pi/2);
  factory AnimatedLoadingDot.end()=>const AnimatedLoadingDot(initialValue: pi);

  @override
  State<AnimatedLoadingDot> createState() => _AnimatedLoadingDotState();
}

class _AnimatedLoadingDotState extends State<AnimatedLoadingDot> with TickerProviderStateMixin{

  late AnimationController controller;
  late Animation sizeAnimation;
  @override
  void initState() {
    controller=AnimationController(vsync: this, duration: const Duration(seconds: 2),)..repeat();
    sizeAnimation=Tween(begin: 0,end: pi*2).animate(controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: sizeAnimation,
      builder: (ctx,child)=>Container(
      height: 20.r+ (sin(sizeAnimation.value+widget.initialValue)*8).r,
      width: 20.r+ (sin(sizeAnimation.value+widget.initialValue)*8).r,
      decoration: const BoxDecoration(
        color: AppStyle.primary,
        shape: BoxShape.circle
      ),
    ));
  }


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

import 'package:etloob/src/core/presentation/assets.dart';
import 'package:etloob/src/core/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Lottie.asset(
        Assets.loader,
        height: SizeConfig.h(64),
        width: SizeConfig.h(64)
      ),
    );
  }
}

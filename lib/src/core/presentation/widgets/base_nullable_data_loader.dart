import 'package:nans/src/core/controllers/base_controller.dart';
import 'package:nans/src/core/presentation/widgets/custom_empty_view.dart';
import 'package:nans/src/core/presentation/widgets/shimmers/default_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class BaseNullableDataLoader<T> extends StatelessWidget {
  final BaseController dataLoader;
  final Widget Function(T?) childBuilder;
  final void Function() onFailLoading;
  final Widget? loadingShimmer;
  final T? Function() dataGetter;

  const BaseNullableDataLoader({Key? key, required this.dataLoader, required this.childBuilder, this.loadingShimmer,
    required this.onFailLoading, required this.dataGetter}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    if(dataLoader.isLazyController && dataLoader.isStillLazy) {
      onFailLoading();
    }

    return AnimatedSwitcher(
        duration:const Duration(milliseconds: 300),
        transitionBuilder: (child, animation) => ScaleTransition(
          scale:animation,
          child: child,
        ),
        child: Observer(
            builder:(_) {
              return dataLoader.isLoading ? loadingShimmer??const DefaultShimmer()
                  :dataLoader.error!=null?CustomEmptyView( dataLoader.error!,onHelperButtonPressed: onFailLoading)
                  :childBuilder(dataGetter(),);
            }));
  }


}

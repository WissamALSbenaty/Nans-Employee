import 'package:nans/src/core/controllers/custom_list_data_loader.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_animated_list.dart';
import 'package:nans/src/core/presentation/widgets/custom_empty_view.dart';
import 'package:nans/src/core/presentation/widgets/shimmers/custom_list_loading_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CustomListDataLoaderWidget<T> extends StatelessWidget {
  final CustomListDataLoader<T> dataLoader;
  final Widget Function(T) dataToWidgetMapper;


   const CustomListDataLoaderWidget({Key? key, required this.dataLoader, required this.dataToWidgetMapper,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Observer(
        builder:(_)=> RefreshIndicator(
          color: AppStyle.primary,
          onRefresh: dataLoader.loadData,
          child : AnimatedSwitcher(
              duration:const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) => ScaleTransition(
                  scale:animation,
                child: child,
              ),
            child:dataLoader.isLoading? const CustomListLoadingShimmer()
                :dataLoader.error!=null?CustomEmptyView( dataLoader.error!,onHelperButtonPressed: dataLoader.loadData,)
                : Column(
            children: [

              Expanded(
                child: CustomAnimatedList(
                  children: [
                    ...dataLoader.dataList.map(dataToWidgetMapper).toList()
                  ],
                ),
              )


            ],
          ),
        )));
  }
}

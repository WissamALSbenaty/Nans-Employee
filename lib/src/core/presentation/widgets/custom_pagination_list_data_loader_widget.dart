import 'package:nans/src/core/controllers/custom_pagination_list_data_loader.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_empty_view.dart';
import 'package:nans/src/core/presentation/widgets/shimmers/custom_list_loading_shimmer.dart';
import 'package:nans/src/core/presentation/widgets/three_dots_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPaginationListDataLoaderWidget<T> extends StatefulWidget {
  final CustomPaginationListDataLoader<T> dataLoader;
  final Widget Function(List<T>) dataToWidgetMapper;
  final ScrollController? scrollController;

  const CustomPaginationListDataLoaderWidget({Key? key, required this.dataLoader, required this.dataToWidgetMapper, this.scrollController}) : super(key: key);

  @override
  State<CustomPaginationListDataLoaderWidget<T>> createState() => _CustomPaginationListDataLoaderWidgetState<T>();
}

class _CustomPaginationListDataLoaderWidgetState<T> extends State<CustomPaginationListDataLoaderWidget<T>> {

  late ScrollController scrollController;

  @override
  void initState() {

    scrollController=(widget.scrollController?? ScrollController())..addListener(() async{

      if ( widget.dataLoader.canLoadMoreData && !widget.dataLoader.isLoadingMoreData &&
          scrollController.position.pixels == scrollController.position.maxScrollExtent) {

         await widget.dataLoader.loadNextPage();
      }
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: AppColors.yellow,
      onRefresh: widget.dataLoader.loadData,
      child :  AnimatedSwitcher(
            duration:const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) => ScaleTransition(
              scale:animation,
              child: child,
            ),
        child: Observer(
            builder: (_) {
              if(widget.dataLoader.isStillLazy){
                widget.dataLoader.initializeLoader();
                return  const CustomListLoadingShimmer();
              }
              return widget.dataLoader.isLoading?const CustomListLoadingShimmer()
                  :widget.dataLoader.error!=null?CustomEmptyView( widget.dataLoader.error!,onHelperButtonPressed: widget.dataLoader.loadData,)
                  :Column(

                    children: [

                      Expanded(
                        child: SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          padding:  EdgeInsets.symmetric( vertical:  16.h,horizontal: 8.w),
                          controller: scrollController,
                          child: widget.dataToWidgetMapper(widget.dataLoader.dataList),
                      )),
                      if(widget.dataLoader.isLoadingMoreData)
                        const ThreeDotsLoadingIndicator(),

                    ],
                  );
            }),
            ));
  }

  @override
  void dispose() {
    if(widget.scrollController==null) {
      scrollController.dispose();
    }
    super.dispose();
  }

}

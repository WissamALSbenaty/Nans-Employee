import 'package:etloob/src/core/controllers/custom_pagination_list_data_loader.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/presentation/widgets/custom_animated_list.dart';
import 'package:etloob/src/core/presentation/widgets/custom_empty_view.dart';
import 'package:etloob/src/core/presentation/widgets/shimmers/custom_list_loading_shimmer.dart';
import 'package:etloob/src/core/presentation/widgets/three_dots_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CustomAnimatedPaginationListDataLoaderWidget<T> extends StatefulWidget {
  final CustomPaginationListDataLoader<T> dataLoader;
  final Widget Function(T) dataToWidgetMapper;
  final ScrollController? scrollController;

  const CustomAnimatedPaginationListDataLoaderWidget({Key? key, required this.dataLoader, required this.dataToWidgetMapper, this.scrollController,}) : super(key: key);

  @override
  State<CustomAnimatedPaginationListDataLoaderWidget<T>> createState() => _CustomAnimatedPaginationListDataLoaderWidgetState<T>();
}

class _CustomAnimatedPaginationListDataLoaderWidgetState<T> extends State<CustomAnimatedPaginationListDataLoaderWidget<T>> {

  late ScrollController scrollController;
  final GlobalKey<CustomAnimatedListState> animatedListKey=GlobalKey();

  @override
  void initState() {

    scrollController=(widget.scrollController?? ScrollController())..addListener(() async{

      if ( widget.dataLoader.canLoadMoreData && !widget.dataLoader.isLoadingMoreData &&
          scrollController.position.pixels == scrollController.position.maxScrollExtent) {
         await widget.dataLoader.loadNextPage();
         addNewElements();

      }

    });
    super.initState();
  }

  void addNewElements(){
    int newElementsLength=widget.dataLoader.dataList.length - (animatedListKey.currentState?.toRenderChildren.length??0 /2).toInt();
    if(newElementsLength<=0) {
      return ;
    }
    List<T> newElements=widget.dataLoader.dataList.sublist(widget.dataLoader.dataList.length-newElementsLength);
    animatedListKey.currentState?.addItems(newElements.map( widget.dataToWidgetMapper).toList());

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
              widget.dataLoader.isLoading;
            if(widget.dataLoader.isStillLazy){
                widget.dataLoader.loadData();
                return Container();
              }
              return widget.dataLoader.isLoading?const CustomListLoadingShimmer()
                  :widget.dataLoader.error!=null?CustomEmptyView( widget.dataLoader.error!,onHelperButtonPressed: widget.dataLoader.loadData,)
                  :Column(

                    children: [

                      Expanded(
                        child: CustomAnimatedList(
                          key: animatedListKey,
                          scrollController: scrollController,
                          children: [
                            ...widget.dataLoader.dataList.map(widget.dataToWidgetMapper).toList()
                          ],
                        ),
                      ),
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
    animatedListKey.currentState?.dispose();
    super.dispose();
  }

}

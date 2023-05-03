import 'package:etloob/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAnimatedList extends StatefulWidget {
  final List<Widget> children;
  final double? spacerHeight;
  final ScrollController? scrollController;
  const CustomAnimatedList({Key? key, required this.children, this.spacerHeight=8, this.scrollController}) : super(key: key);

  @override
  State<CustomAnimatedList> createState() => CustomAnimatedListState();
}

class CustomAnimatedListState extends State<CustomAnimatedList> {

  final GlobalKey<AnimatedListState> listKey = GlobalKey();
  List<Widget> toRenderChildren=[];

  @override
  void initState() {
    super.initState();
    addItems(widget.children);
  }

  void addItems(List<Widget> toAddWidgets) {
    var future = Future(() {});
    for (Widget child in toAddWidgets) {
      future = future.then((_) {
        return Future.delayed(const Duration(milliseconds: 100), () {
          toRenderChildren.add(child);
          toRenderChildren.add(CustomSizedBox(height: widget.spacerHeight,));
          listKey.currentState?.insertItem(toRenderChildren.length - 2);
          listKey.currentState?.insertItem(toRenderChildren.length - 1);
        });
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      physics: const AlwaysScrollableScrollPhysics(),
        key: listKey,
      padding:  EdgeInsets.symmetric( vertical:  16.h,horizontal: 8.w),
        initialItemCount: toRenderChildren.length,
        controller: widget.scrollController,
        itemBuilder: (context, index, animation) {
          return SlideTransition(
            position: CurvedAnimation(
              curve: Curves.easeOut,
              parent: animation,
            ).drive((Tween<Offset>(
              begin: const Offset(1, 0),
              end: const Offset(0, 0),
            ))),
            child: toRenderChildren[index],
          );
        },
      );
  }
}

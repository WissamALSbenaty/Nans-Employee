import 'package:nans/src/core/presentation/assets.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomExpandablePanel extends StatefulWidget {

  final Widget title;
  final bool initialValue;
  final List<Widget> content, actions;

   const CustomExpandablePanel({Key? key,  required this.title, required this.content,required this.actions,  this.initialValue=true}) : super(key: key);

  @override
  State<CustomExpandablePanel> createState() => _CustomExpandablePanelState();
}

class _CustomExpandablePanelState extends State<CustomExpandablePanel> {

  bool isExpanded=true;
  @override
  void initState() {
    isExpanded=widget.initialValue;
    super.initState();
  }

  void toggleIsExpanded(){
    setState(() {
      isExpanded=!isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleIsExpanded,
      child: Container(
        width: 343.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 24.h),
        decoration: BoxDecoration(
          color: AppStyle.blue,
          borderRadius: BorderRadius.circular(8),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                widget.title,
                const Spacer(),

                for(Widget action in widget.actions)
                  ...[
                    action,
                    const CustomSizedBox(width: 16,),
                  ],

                if(widget.content.isNotEmpty)
                SvgPicture.asset(isExpanded? Assets.upArrow:Assets.downArrow,height: 20.w,width: 20.w,)

              ],
            ),
            if(isExpanded)
              for(Widget widget in widget.content)
                widget,
          ],
        ),

      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:etloob/src/core/util/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRadioButtonsSheet<T> extends StatelessWidget {
  final T? selectedItem;
  final List<T> allItems;
  final String title;
  final void Function(T) onSelectItem;
  final Widget? helperWidget;
  final String Function(T) nameGetter;

  const CustomRadioButtonsSheet({Key? key,required this.onSelectItem,required this.allItems,required this.title,
    required this.selectedItem,this.helperWidget,required this.nameGetter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const CustomSizedBox(height: 16,),

          Text(title.translateWord,style: AppStyle.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold),),

          const CustomSizedBox(height: 24,),

          if(helperWidget!=null)
            helperWidget!,

          for(T item in allItems)
            ...[
              GestureDetector(
                 onTap: (){
                  onSelectItem(item);
                  AutoRouter.of(context).pop();
                  },
                child: Row(
                    children: [
                      Radio<T>(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                         groupValue: selectedItem,
                          value: item,
                          activeColor: AppColors.secondaryYellow,
                          onChanged: (_) {
                            onSelectItem(item);
                            AutoRouter.of(context).pop();
                          }),

                      Expanded(
                          child: Text(nameGetter(item),maxLines: 2
                            ,style: AppStyle.textTheme.bodyText2!.copyWith(color:
                            item==selectedItem?AppColors.secondaryYellow :AppColors.blackColor.shade600),)),
                    ]
                ),
              ),
              const CustomSizedBox(height: 8,),
            ],
        ],
      ),
    );
  }
}

import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/util/extentions.dart';
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

          Text(title.translateWord,style: AppStyle.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),),

          const CustomSizedBox(height: 24,),

          if(helperWidget!=null)
            helperWidget!,

          for(T item in allItems)
            ...[
              GestureDetector(
                 onTap: (){
                  onSelectItem(item);
                  appRouter.pop();
                  },
                child: Row(
                    children: [
                      Radio<T>(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                         groupValue: selectedItem,
                          value: item,
                          activeColor: AppStyle.primary,
                          onChanged: (_) {
                            onSelectItem(item);
                            appRouter.pop();
                          }),

                      Expanded(
                          child: Text(nameGetter(item),maxLines: 2
                            ,style: AppStyle.textTheme.bodyMedium!.copyWith(color:
                            item==selectedItem?AppStyle.primary :AppStyle.blackColor.shade600),)),
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

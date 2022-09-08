import 'package:merit_driver/src/core/presentation/widgets/custom_radio_button.dart';
import 'package:merit_driver/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:merit_driver/src/core/presentation/theme_manager.dart';
import 'package:flutter/material.dart';

class CustomRadioButtonTile<T> extends StatelessWidget {
  final void Function(T) onTilePressed;
  final T item;
  final T? selectedItem;
  final String Function(T) titleGetter;
  final String Function(T)? subtitleGetter;

  const CustomRadioButtonTile({Key? key, required this.onTilePressed, required this.item, required this.titleGetter,required this.selectedItem, this.subtitleGetter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = ThemeManager.isDarkMode;

    return GestureDetector(
        onTap: ()=>onTilePressed(item),
        child: Row(
            children: [
              CustomRadioButton(isSelected: item==selectedItem),
              const CustomSizedBox(width: 8,),

              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(titleGetter(item),
                        style: ThemeManager.textTheme.bodyText2!.copyWith(color: isDarkMode?null:ThemeManager.primaryColor),),
                      if(subtitleGetter!=null)
                        Text(subtitleGetter!(item),
                          style: ThemeManager.textTheme.subtitle2!.copyWith(color: isDarkMode?null:ThemeManager.primaryColor),),
                    ],
                  )),
            ]
        ),
      );
  }
}

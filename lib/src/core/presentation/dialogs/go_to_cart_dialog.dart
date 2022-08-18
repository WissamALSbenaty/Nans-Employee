import 'package:auto_route/auto_route.dart';
import 'package:etloob/src/core/presentation/assets.dart';
import 'package:etloob/src/core/presentation/auto_router.gr.dart';
import 'package:etloob/src/core/presentation/dialogs/custom_image_dialog.dart';
import 'package:etloob/src/core/presentation/page_arguments/home_page_navigation_arguments.dart';
import 'package:flutter/material.dart';

class GoToCartDialog extends StatelessWidget {

  final bool isDailyShoppingProduct;

  const GoToCartDialog({super.key,required  this.isDailyShoppingProduct}) ;


  @override
  Widget build(BuildContext context) {
    return  CustomImageDialog(
        imagePath: Assets.doneProcess,
        content: 'Product Added Successfully !',
        mainActionTitle: 'View Cart',
        secondActionTitle: 'Continue Shopping',
        onMainActionPressed:() {
          AutoRouter.of(context).popUntilRoot();
          AutoRouter.of(context).replace(
              HomePageRoute(args: HomePageNavigationArguments(initialPage: 1,
                  cartInitialPage: isDailyShoppingProduct ? 1 : 0),
                  key: ValueKey(DateTime.now().toIso8601String())
              ));
        },
        onSecondActionPressed:(){
          AutoRouter.of(context).pop();
          },
    );
  }
}

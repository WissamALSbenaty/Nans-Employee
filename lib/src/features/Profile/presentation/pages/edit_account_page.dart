
import 'package:auto_route/auto_route.dart';
import 'package:nans/src/core/controllers/app_controller.dart';
import 'package:nans/src/core/presentation/assets.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/util/mixins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nans/src/features/Profile/presentation/widgets/route_option_card.dart';

@RoutePage()
class EditAccountPage extends StatefulWidget with WidgetControllerCreatorMixin<AppController> {

  EditAccountPage({Key? key}) : super(key: key);

  @override
  State<EditAccountPage> createState() => _EditAccountPageState();
}

class _EditAccountPageState extends State<EditAccountPage> {
  final List<String> titles=['Change My Password',];
  final List<String> iconPaths=[Assets.changePassword,];
  late List<void Function()>onActionsPressed;

  @override
  void initState() {
    onActionsPressed=[
      widget.createdController.changePassword,
    ];
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(
        barTitle: 'Edit Account',
        context: context,
      ),

      backgroundColor: AppStyle.blue,

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r,),
        child: Column(
          children:  [
            for(int i=0;i<titles.length;i++)
              ...[
                RouteOptionCard(
                    onPressed: onActionsPressed[i],
                    title:titles[i],iconPath:iconPaths[i],iconColor:Colors.white),
                const CustomSizedBox(height: 16,),

              ],
          ],
        ),
      ),
    );
  }
}

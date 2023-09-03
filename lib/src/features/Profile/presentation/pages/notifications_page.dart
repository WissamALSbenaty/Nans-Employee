import 'package:auto_route/annotations.dart';
import 'package:nans/dependencies.dart';
import 'package:nans/src/core/presentation/assets.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_animated_pagination_list_data_loader_widget.dart';
import 'package:nans/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:nans/src/core/presentation/widgets/custom_tile.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/features/Profile/controllers/notifications_controller.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NotificationsPage extends StatelessWidget{
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyle.blue,
        appBar:CustomAppBar(
          context: context,
          barTitle: 'My Notifications',
        ),
        body: CustomAnimatedPaginationListDataLoaderWidget(
            dataLoader: getIt<NotificationsController>(),
            dataToWidgetMapper: (data)=>OfflineCustomTile(
              onTilePressed: (){},imagePath: Assets.logo,
              title: data.title,titleMedium: data.body,titleSmall: data.creationDate.dayFormat,
            )
        )
    );

  }
}

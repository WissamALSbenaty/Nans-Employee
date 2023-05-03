import 'package:auto_route/annotations.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:etloob/src/core/util/mixins.dart';
import 'package:etloob/src/features/Profile/controllers/notifications_controller.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NotificationsPage extends StatefulWidget{
   const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> with StateStoreCreatorMixin<NotificationsController,NotificationsPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      appBar:CustomAppBar(
        context: context,
        barTitle: 'My Notifications',
      ),
      /*body: CustomAnimatedPaginationListDataLoaderWidget<NotificationModel>(
        dataLoader: createdStore,
        dataToWidgetMapper: (data)=>NotificationTile(notification: data)
      )*/
    );

  }
}

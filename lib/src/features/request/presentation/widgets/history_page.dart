import 'package:flutter/material.dart';
import 'package:nans/src/core/presentation/widgets/custom_animated_pagination_list_data_loader_widget.dart';
import 'package:nans/src/core/util/mixins.dart';
import 'package:nans/src/features/request/controllers/history_requests_controller.dart';
import 'package:nans/src/features/request/presentation/widgets/request_tile.dart';

class HistoryPage extends StatelessWidget with WidgetControllerCreatorMixin<HistoryRequestsController> {
   HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedPaginationListDataLoaderWidget(
        dataLoader: createdController,
        dataToWidgetMapper: (data)=>RequestTile(request: data,
            requestPageRefresher: createdController.initializeLoader)
    );
  }
}

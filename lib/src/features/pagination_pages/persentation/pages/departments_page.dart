import 'package:auto_route/auto_route.dart';
import 'package:nans/src/core/presentation/widgets/custom_animated_pagination_list_data_loader_widget.dart';
import 'package:nans/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:nans/src/core/util/mixins.dart';
import 'package:nans/src/features/pagination_pages/controllers/departments_controllers.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DepartmentsPage extends StatelessWidget with WidgetStoreCreatorMixin<DepartmentsController> {
   DepartmentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        barTitle: "Departments",
        context: context,
      ),
      body:CustomAnimatedPaginationListDataLoaderWidget(
        dataLoader:createdStore,
        dataToWidgetMapper: (data)=>Container()
    ));
  }
}

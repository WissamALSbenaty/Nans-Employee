import 'package:auto_route/auto_route.dart';
import 'package:etloob/src/core/Data/Errors/core_errors.dart';
import 'package:etloob/src/core/Data/models/user_profile_model.dart';
import 'package:etloob/src/core/controllers/app_controller.dart';
import 'package:etloob/src/core/presentation/assets.dart';
import 'package:etloob/src/core/presentation/auto_router.gr.dart';
import 'package:etloob/src/core/presentation/sheets/custom_bottomsheet.dart';
import 'package:etloob/src/core/presentation/style.dart';
import 'package:etloob/src/core/presentation/widgets/base_data_loader.dart';
import 'package:etloob/src/core/presentation/widgets/custom_empty_view.dart';
import 'package:etloob/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:etloob/src/core/util/extentions.dart';
import 'package:etloob/src/core/util/mixins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyProfilePage extends StatelessWidget with WidgetStoreCreatorMixin<AppController> {
   MyProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColors.blue,

      body:BaseDataLoader<UserProfileModel?>(
        dataLoader: createdStore,
        onFailLoading: createdStore.loadData,
        dataGetter: ()=>createdStore.userProfileModel,
        childBuilder: (data)=>data==null?
        CustomEmptyView(NotAuthorizedError(message: null)):
          SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
    ));
  }
}

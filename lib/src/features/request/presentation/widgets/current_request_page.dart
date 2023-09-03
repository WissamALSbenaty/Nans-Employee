import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nans/src/Data/Errors/requests_errors.dart';
import 'package:nans/src/Data/models/request_details_model.dart';
import 'package:nans/src/Data/models/stage_model.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_data_loader_widget.dart';
import 'package:nans/src/core/presentation/widgets/custom_empty_view.dart';
import 'package:nans/src/core/presentation/widgets/custom_network_image.dart';
import 'package:nans/src/core/presentation/widgets/custom_nullable_data_loader_widget.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/main_button.dart';
import 'package:nans/src/core/presentation/widgets/negative_button.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/core/util/mixins.dart';
import 'package:nans/src/features/request/controllers/current_request_controller.dart';

class CurrentRequestPage extends StatelessWidget with WidgetControllerCreatorMixin<CurrentRequestController>{
  CurrentRequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomNullableDataLoaderWidget<RequestDetailsModel?>(
          dataLoader:createdController,

          childBuilder: (data)=> data==null?CustomEmptyView(EmploeeWithoutCurrentRequestError(),
            onHelperButtonPressed:createdController.loadData,):  SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal:  24.w,vertical:  32.h,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:  [
                CustomNetworkImage(imagePath: data.service.image,height: 150.h,width: 343.w,),
                const CustomSizedBox(height: 8,),
                Text(data.service.title,style: AppStyle.textTheme.bodyLarge,),
                const CustomSizedBox(height: 4,),
                Text('${data.status} - ${data.creationDate.dayFormat}',style: AppStyle.textTheme.bodySmall,),
                const CustomSizedBox(height: 4,),
                Text(data.department.title,style: AppStyle.textTheme.bodySmall,),
                const CustomSizedBox(height: 8,),

                for(MapEntry<String,dynamic> entry in data.form.entries)
                  ...[
                    Text('${entry.key} : ${entry.value is List?
                    entry.value.fold("",(prev,e)=> "$prev , $e"):entry.value.toString() }'
                      ,style: AppStyle.textTheme.titleLarge,),
                    const CustomSizedBox(height: 4,),
                  ],

                const CustomSizedBox(height: 12,),
                for(StageModel stage in data.stages)
                  ...[
                    ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          side:const BorderSide(color: AppStyle.primary),
                        ),
                        title: Text(
                          stage.title,style: AppStyle.textTheme.bodySmall,
                        ),
                        subtitle: Text(
                          stage.status,style: AppStyle.textTheme.bodySmall!.copyWith(
                          color: stage.status=="FINISHED"? AppStyle.green:stage.status=="ABORTED"?AppStyle.errorColor:AppStyle.blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                        )),


                    const CustomSizedBox(height: 8,),



                  ],

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MainButton(title: 'Finish', isLoading: false, width: 128,
                        onPressed: ()=> createdController.approveStage(stageId: data.stages.firstWhere((element) => element.isCurrentStage).id)),


                    NegativeButton(title: 'Abort',width: 128,
                        onPressed: ()=> createdController.rejectStage(stageId: data.stages.firstWhere((element) => element.isCurrentStage).id)),
                  ],
                ),


              ],
            ),
          ));
  }
}

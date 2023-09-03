import 'package:auto_route/annotations.dart';
import 'package:nans/dependencies.dart';
import 'package:nans/src/Data/models/request_details_model.dart';
import 'package:nans/src/Data/models/stage_model.dart';
import 'package:nans/src/core/presentation/arguments/request_details_page_arguments.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:nans/src/core/presentation/widgets/custom_data_loader_widget.dart';
import 'package:nans/src/core/presentation/widgets/custom_network_image.dart';
import 'package:nans/src/core/presentation/widgets/custom_sized_box.dart';
import 'package:nans/src/core/presentation/widgets/main_button.dart';
import 'package:nans/src/core/presentation/widgets/negative_button.dart';
import 'package:nans/src/core/util/extentions.dart';
import 'package:nans/src/features/request/controllers/request_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class RequestDetailsPage extends StatefulWidget {
  final RequestDetailsPageArguments args;
  const RequestDetailsPage({required this.args, Key? key}) : super(key: key);

  @override
  State<RequestDetailsPage> createState() => _RequestDetailsPageState();
}

class _RequestDetailsPageState extends State<RequestDetailsPage>{
    late RequestDetailsController requestDetailsController;

    @override
    void initState() {
      requestDetailsController=getIt<RequestDetailsController>(param1:widget.args );
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: AppStyle.blue ,
            appBar:CustomAppBar(
              barTitle: 'Request Details',
              context: context,
              barActions: const [
              ],
            ),


        body:CustomDataLoaderWidget<RequestDetailsModel>(
            dataLoader:requestDetailsController,
            childBuilder: (data)=>Stack(
                fit: StackFit.expand,
                children: [
                  SingleChildScrollView(
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

                        const CustomSizedBox(height:72,),



                      ],
                    ),
                  ),

                  if(
                  data.stages.any((element) => element.isCurrentStage &&element.status=="ONGOING"))
                    Positioned(
                        left: 0,right: 0, bottom: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8.h),

                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: AppStyle.basicBoxShadow,
                              borderRadius: BorderRadius.vertical(top: Radius.circular(16.r))
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              MainButton(title: 'Finish', isLoading: false, width: 128,
                                  onPressed: ()=> requestDetailsController.approveStage(stageId: data.stages.firstWhere((element) => element.isCurrentStage).id)),


                              NegativeButton(title: 'Abort',width: 128,
                                  onPressed: ()=> requestDetailsController.rejectStage(stageId: data.stages.firstWhere((element) => element.isCurrentStage).id)),
                            ],
                          ),
                        ))
                ])));
        }
}

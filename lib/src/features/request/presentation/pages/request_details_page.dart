import 'package:auto_route/annotations.dart';
import 'package:nans/dependencies.dart';
import 'package:nans/src/Data/models/request_details_model.dart';
import 'package:nans/src/core/presentation/widgets/custom_app_bar.dart';
import 'package:nans/src/core/presentation/widgets/custom_data_loader_widget.dart';
import 'package:nans/src/features/request/controllers/request_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class RequestDetailsPage extends StatefulWidget {
  final String id;
  const RequestDetailsPage({required this.id, Key? key}) : super(key: key);

  @override
  State<RequestDetailsPage> createState() => _RequestDetailsPageState();
}

class _RequestDetailsPageState extends State<RequestDetailsPage>{
    late RequestDetailsController requestDetailsController;

    @override
    void initState() {
      requestDetailsController=getIt<RequestDetailsController>(param1:widget.id );
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.white ,
            appBar:CustomAppBar(
              barTitle: 'Request Details',
              context: context,
              barActions: const [
              ],
            ),


            body:  CustomDataLoaderWidget<RequestDetailsModel>(
              dataLoader:requestDetailsController,
              childBuilder: (data)=> SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal:  8.w,vertical:  8.h,),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [

                  ],


                ),
              ),
    )          );
        }
}

import 'package:nans/src/Data/models/request_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nans/src/core/presentation/arguments/request_details_page_arguments.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/style.dart';
import 'package:nans/src/core/presentation/widgets/custom_tile.dart';
import 'package:nans/src/core/util/extentions.dart';

 class RequestTile extends StatelessWidget {

  final RequestModel request;
  final Future<void> Function() requestPageRefresher;

  const RequestTile({Key? key, required this.request, required this.requestPageRefresher}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return OnlineCustomTile(
        onTilePressed: ()=>appRouter.push(RequestDetailsRoute(args:RequestDetailsPageArguments(
            requestId: request.id,requestPageRefresher:requestPageRefresher ))),
        imagePath: request.service.title,
        title: request.client.name,
        trailing: Column(
          children: [
            Text(request.requestStatus.translateWord,style: AppStyle.textTheme.titleLarge!.copyWith(
                color: request.requestStatus=="ABORTED"||request.requestStatus=="موقفة"  ?AppStyle.errorColor:
                      request.requestStatus=="FINISHED"||request.requestStatus=="منتهية"?AppStyle.green:AppStyle.blackColor

            ),),
              const Spacer(),

          ],
        ),
        titleMedium: request.creationDate.dayFormat,
        titleSmall: request.service.title,
    );
  }
}
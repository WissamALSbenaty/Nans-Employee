

import 'package:nans/src/Data/models/request_details_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_requests_repository.dart';
import 'package:nans/src/core/controllers/custom_data_loader.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:nans/src/core/presentation/arguments/request_details_page_arguments.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/dialogs/custom_dialog.dart';
import 'package:nans/src/features/request/presentation/dialogs/approve_request_dialog.dart';
import 'package:nans/src/features/request/presentation/dialogs/reject_request_dialog.dart';

part 'request_details_controller.g.dart';

@injectable
class RequestDetailsController extends RequestDetailsControllerBase with _$RequestDetailsController {
  RequestDetailsController(@factoryParam super.args, super.requestsRepository, super.productsRepository);

}
abstract class RequestDetailsControllerBase  extends CustomDataLoader<RequestDetailsModel> with Store{

  final IRequestsRepository requestsRepository;
  final RequestDetailsPageArguments args;

  RequestDetailsControllerBase (this.args,this.requestsRepository,super.logger,);

  @override
  Future<RequestDetailsModel>  dataGetter ()=>requestsRepository.getRequestDetails(args.requestId);

  @action
  void rejectStage({required String stageId})=>runStoreSecondaryFunction(Future(()async{
    
    showCustomDialog(dialog: RejectRequestDialog(onRejectRequest: (header,description)async{
      appRouter.pop();
      await requestsRepository.rejectStage(requestId: args.requestId,stageId: stageId,
           header: header, description: description);
      args.requestPageRefresher();
      appRouter.popUntilRoot();
    }));
  }));

  @action
  void approveStage({required String stageId})=>runStoreSecondaryFunction(Future(()async{
    showCustomDialog(dialog: ApproveRequestDialog(onApproveRequest: (header,description)async{
      await requestsRepository.approveStage(requestId: args.requestId,stageId: stageId,
          header: header,description: description);
      appRouter.pop();
      args.requestPageRefresher();
      loadData();
    }));
  }));

}
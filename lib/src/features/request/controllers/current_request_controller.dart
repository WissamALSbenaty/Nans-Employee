

import 'package:nans/src/Data/Errors/custom_error.dart';
import 'package:nans/src/Data/Errors/requests_errors.dart';
import 'package:nans/src/Data/Errors/requests_errors.dart';
import 'package:nans/src/Data/models/request_details_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_requests_repository.dart';
import 'package:nans/src/core/controllers/custom_data_loader.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:nans/src/core/presentation/auto_router.dart';
import 'package:nans/src/core/presentation/dialogs/custom_dialog.dart';
import 'package:nans/src/features/request/presentation/dialogs/approve_request_dialog.dart';
import 'package:nans/src/features/request/presentation/dialogs/reject_request_dialog.dart';

part 'current_request_controller.g.dart';

@injectable
class CurrentRequestController extends CurrentRequestControllerBase with _$CurrentRequestController {
  CurrentRequestController( super.requestsRepository, super.productsRepository);

}
abstract class CurrentRequestControllerBase  extends CustomDataLoader<RequestDetailsModel?> with Store{

  final IRequestsRepository requestsRepository;

  CurrentRequestControllerBase (this.requestsRepository,super.logger,);

  @override
  Future<RequestDetailsModel?>  dataGetter () async{
    if(data==null) {

      await requestsRepository.pickRequest();
    }
    return await requestsRepository.getCurrentRequest();
  }



  @action
  void rejectStage({required String stageId})=>runStoreSecondaryFunction(Future(()async{

    showCustomDialog(dialog: RejectRequestDialog(onRejectRequest: (header,description)async{
      appRouter.pop();
      await requestsRepository.rejectStage(requestId: data!.id,stageId: stageId,
          header: header,description:description);
      data=null;
    }));
  }));

  @action
  void approveStage({required String stageId})=>runStoreSecondaryFunction(Future(()async{
    showCustomDialog(dialog: ApproveRequestDialog(onApproveRequest:  (header,description)async{
      await requestsRepository.approveStage(requestId: data!.id,stageId: stageId,
          header:header,description: description);
      appRouter.pop();
      data=null;
    }));
  }));

}
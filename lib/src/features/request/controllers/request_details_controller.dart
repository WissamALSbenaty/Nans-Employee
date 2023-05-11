// ignore_for_file: deprecated_member_use

import 'package:nans/src/Data/models/request_details_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_requests_repository.dart';
import 'package:nans/src/core/controllers/app_controller.dart';
import 'package:nans/src/core/controllers/custom_data_loader.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'request_details_controller.g.dart';

@injectable
class RequestDetailsController extends RequestDetailsControllerBase with _$RequestDetailsController {
  RequestDetailsController(@factoryParam  super.requestId, super.requestsRepository, super.productsRepository,super.appController,);

}
abstract class RequestDetailsControllerBase  extends CustomDataLoader<RequestDetailsModel> with Store{

  final IRequestsRepository requestsRepository;
  final AppController appController;
  final int requestId;

  RequestDetailsControllerBase (this.requestId,this.requestsRepository,this.appController,super.logger,):super(
    dataGetter: ()=>requestsRepository.getRequestDetails( requestId),
  );

}
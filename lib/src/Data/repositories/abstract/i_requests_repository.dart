


import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/Data/models/request_details_model.dart';
import 'package:nans/src/Data/models/request_model.dart';
import 'package:nans/src/Data/repositories/abstract/repository.dart';

abstract class IRequestsRepository extends Repository {

  IRequestsRepository(super.apiHelper);

  Future<RequestDetailsModel> getRequestDetails(String requestId);
  Future<PaginationDataModel<RequestModel>> getHistory({required int pageNumber});

  Future<void> approveStage({required String requestId,required String stageId,required String header,required String description});
  Future<void> rejectStage({required String requestId,required String stageId,required String header,required String description});

  Future<void> pickRequest();
  Future<RequestDetailsModel?> getCurrentRequest();
}

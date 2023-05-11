

import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/Data/models/request_details_model.dart';
import 'package:nans/src/Data/models/request_model.dart';
import 'package:nans/src/Data/repositories/abstract/repository.dart';

abstract class IRequestsRepository extends Repository {
  IRequestsRepository(super.apiHelper);

  Future<RequestDetailsModel> getRequestDetails(int requestId);
  Future<PaginationDataModel<RequestModel>> getRequests({required int pageNumber});
  Future<void> cancelRequest(int requestId);
  Future<void> rateService({required int serviceId,required double vote,String? comment});

}

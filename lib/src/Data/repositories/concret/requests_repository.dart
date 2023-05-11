
import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/Data/models/request_details_model.dart';
import 'package:nans/src/Data/models/request_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_requests_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IRequestsRepository)
class RequestsRepository extends IRequestsRepository {

  RequestsRepository( super.apiHelper,) ;

  @override
  Future<RequestDetailsModel> getRequestDetails(int requestId) {
    // TODO: implement getRequestDetails
    throw UnimplementedError();
  }

  @override
  Future<PaginationDataModel<RequestModel>> getRequests({required int pageNumber}) {
    // TODO: implement getRequests
    throw UnimplementedError();
  }

  @override
  Future<void> cancelRequest(int requestId) {
    // TODO: implement cancelRequest
    throw UnimplementedError();
  }

  @override
  Future<void> rateService({required int serviceId, required double vote, String? comment}) {
    // TODO: implement rateService
    throw UnimplementedError();
  }
}


import 'package:nans/src/Data/Errors/core_errors.dart';
import 'package:nans/src/Data/Errors/requests_errors.dart';
import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/Data/models/request_details_model.dart';
import 'package:nans/src/Data/models/request_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_requests_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:nans/src/core/controllers/app_controller.dart';

@Singleton(as: IRequestsRepository)
class RequestsRepository extends IRequestsRepository {

  final AppController appController;
  RequestsRepository( this.appController,super.apiHelper) ;

  @override
  Future<RequestDetailsModel> getRequestDetails(String requestId) =>apiHelper.getObject(url: 'dashboard/cRequest/$requestId',
        parameters: {}, mapper: RequestDetailsModel.fromJson);

  @override
  Future<PaginationDataModel<RequestModel>> getHistory({required int pageNumber})=> apiHelper.getPagination(
      url: 'dashboard/cRequest/employee',
      parameters: {"page":pageNumber.toString()}, mapper: RequestModel.fromJson);

  @override
  Future<void> approveStage({required String requestId,required String stageId,
    required String header,required String description}) =>
      apiHelper.patch(url: 'dashboard/cRequest/update-stage/$requestId/$stageId', formData: {
        "status": "FINISHED",
        "note": {
          "header": header,
          "description": description
        }
      });

  @override
  Future<void> rejectStage({required String requestId,required String stageId,
    required String header,required String description})=>
      apiHelper.patch(url: 'dashboard/cRequest/update-stage/$requestId/$stageId', formData: {
        "status": "ABORTED",
        "note": {
          "header": header,
          "description": description
        }
      });


  @override
  Future<void> pickRequest()=>apiHelper.patch(url: 'dashboard/cRequest/pick-crequest',
      formData: {});

  @override
  Future<RequestDetailsModel?> getCurrentRequest() async{
    try {
      return await apiHelper.getObject(url: 'dashboard/cRequest/current-crequest',
          parameters: {}, mapper: RequestDetailsModel.fromJson);
    }
    catch (e){
      if(e is BadRequestError) {
        return null;
      }
      rethrow;
    }
  }




}
import 'package:injectable/injectable.dart';
import 'package:nans/src/Data/models/department_details_model.dart';
import 'package:nans/src/Data/models/department_model.dart';
import 'package:nans/src/Data/models/news_details_model.dart';
import 'package:nans/src/Data/models/news_model.dart';
import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/Data/models/service_details_model.dart';
import 'package:nans/src/Data/models/service_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_nans_repository.dart';

@Singleton(as: INansRepository)
class NansRepository extends INansRepository {

  NansRepository(super.apiHelper);

  @override
  Future<DepartmentDetailsModel> getDepartmentDetails({required String id}) {
    // TODO: implement getDepartmentDetails
    throw UnimplementedError();
  }

  @override
  Future<PaginationDataModel<DepartmentModel>> getDepartments({required int pageNumber}) {
    // TODO: implement getDepartments
    throw UnimplementedError();
  }

  @override
  Future<PaginationDataModel<NewsModel>> getNews({required int pageNumber}) {
    // TODO: implement getNews
    throw UnimplementedError();
  }

  @override
  Future<NewsDetailsModel> getNewsDetails({required String id}) {
    // TODO: implement getNewsDetails
    throw UnimplementedError();
  }

  @override
  Future<ServiceDetailsModel> getServiceDetails({required String id}) {
    // TODO: implement getServiceDetails
    throw UnimplementedError();
  }

  @override
  Future<PaginationDataModel<ServiceModel>> getServices({required int pageNumber}) {
    // TODO: implement getServices
    throw UnimplementedError();
  }
} 
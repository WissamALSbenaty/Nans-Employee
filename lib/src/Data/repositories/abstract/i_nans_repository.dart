



import 'package:nans/src/Data/Repositories/abstract/repository.dart';
import 'package:nans/src/Data/models/department_details_model.dart';
import 'package:nans/src/Data/models/department_model.dart';
import 'package:nans/src/Data/models/news_details_model.dart';
import 'package:nans/src/Data/models/news_model.dart';
import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/Data/models/service_details_model.dart';
import 'package:nans/src/Data/models/service_model.dart';

abstract class INansRepository extends Repository{
  INansRepository(super.apiHelper);

  Future<PaginationDataModel<NewsModel>> getNews({required int pageNumber});
  Future<PaginationDataModel<DepartmentModel>> getDepartments({required int pageNumber});
  Future<PaginationDataModel<ServiceModel>> getServices({required int pageNumber});

  Future<NewsDetailsModel> getNewsDetails({required String id});
  Future<DepartmentDetailsModel> getDepartmentDetails({required String id});
  Future<ServiceDetailsModel> getServiceDetails({required String id});
}
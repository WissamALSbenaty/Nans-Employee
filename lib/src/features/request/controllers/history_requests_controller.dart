
import 'package:injectable/injectable.dart';
import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/Data/models/request_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_requests_repository.dart';
import 'package:nans/src/core/controllers/custom_pagination_list_data_loader.dart';

@injectable
class HistoryRequestsController extends CustomPaginationListDataLoader<RequestModel>{

  final IRequestsRepository requestsRepository;

  HistoryRequestsController(this.requestsRepository,super.logger);

  @override
  Future<PaginationDataModel<RequestModel>> dataGetter(int page)=>requestsRepository.getHistory(pageNumber: page);
}
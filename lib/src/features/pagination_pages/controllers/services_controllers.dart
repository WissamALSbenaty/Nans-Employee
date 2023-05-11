import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/Data/models/service_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_nans_repository.dart';
import 'package:nans/src/core/controllers/custom_pagination_list_data_loader.dart';
import 'package:injectable/injectable.dart';

@injectable
class ServicesController extends CustomPaginationListDataLoader<ServiceModel>{

  final INansRepository nansRepository;

  ServicesController(this.nansRepository,super.logger);

  @override
  Future<PaginationDataModel<ServiceModel>> dataGetter(int page) => nansRepository.getServices(pageNumber: pageNumber);

}
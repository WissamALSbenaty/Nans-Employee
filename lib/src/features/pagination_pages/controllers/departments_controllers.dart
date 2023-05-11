import 'package:nans/src/Data/models/department_model.dart';
import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_nans_repository.dart';
import 'package:nans/src/core/controllers/custom_pagination_list_data_loader.dart';
import 'package:injectable/injectable.dart';

@injectable
class DepartmentsController extends CustomPaginationListDataLoader<DepartmentModel>{

  final INansRepository nansRepository;

  DepartmentsController(this.nansRepository,super.logger);

  @override
  Future<PaginationDataModel<DepartmentModel>> dataGetter(int page) => nansRepository.getDepartments(pageNumber: pageNumber);

}
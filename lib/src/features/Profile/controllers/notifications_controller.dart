import 'package:nans/src/Data/models/notification_model.dart';
import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_utils_repository.dart';
import 'package:nans/src/core/controllers/custom_pagination_list_data_loader.dart';
import 'package:injectable/injectable.dart';

@injectable
class NotificationsController extends CustomPaginationListDataLoader<NotificationModel>{

  final IUtilsRepository utilsRepository;

  NotificationsController(this.utilsRepository,super.logger,);

  @override
  Future<PaginationDataModel<NotificationModel>> dataGetter(int page) => utilsRepository.getNotifications(pageNumber: pageNumber);



}
import 'package:nans/src/Data/models/notification_model.dart';
import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_profile_repository.dart';
import 'package:nans/src/core/controllers/custom_pagination_list_data_loader.dart';
import 'package:injectable/injectable.dart';

@injectable
class NotificationsController extends CustomPaginationListDataLoader<NotificationModel>{

  final IProfileRepository profileRepository;

  NotificationsController(this.profileRepository,super.logger,);
  @override
  Future<PaginationDataModel<NotificationModel>> dataGetter(int page) => profileRepository.getNotifications(pageNumber: pageNumber);



}
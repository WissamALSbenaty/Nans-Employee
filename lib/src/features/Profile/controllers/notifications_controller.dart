import 'package:etloob/src/Data/Errors/core_errors.dart';
import 'package:etloob/src/Data/models/notification_model.dart';
import 'package:etloob/src/Data/repositories/abstract/i_profile_repository.dart';
import 'package:etloob/src/core/controllers/custom_pagination_list_data_loader.dart';
import 'package:injectable/injectable.dart';

@injectable
class NotificationsController extends CustomPaginationListDataLoader<NotificationModel>{

  final IProfileRepository profileRepository;

  NotificationsController(this.profileRepository,super.logger,):super(
    dataGetter:(page)=> profileRepository.getNotifications(pageNumber: page),
    emptyDataError: EmptyItemsError(),
  );


}


import 'package:nans/src/Data/api_helper.dart';
import 'package:nans/src/Data/models/notification_model.dart';
import 'package:nans/src/Data/models/pagination_data_model.dart';
import 'package:nans/src/Data/models/social_media_model.dart';
import 'package:nans/src/Data/repositories/abstract/repository.dart';

abstract class IProfileRepository extends Repository {

  IProfileRepository(ApiHelper apiHelper) :super(apiHelper);


  Future<SocialMediaModel> getSocialMediaAccounts();
  Future<PaginationDataModel<NotificationModel>> getNotifications({required int pageNumber});
}

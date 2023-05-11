import 'package:nans/src/Data/models/social_media_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_profile_repository.dart';
import 'package:nans/src/core/controllers/custom_data_loader.dart';
import 'package:injectable/injectable.dart';

@injectable
class SocialMediaController extends CustomDataLoader<SocialMediaModel>{

  final IProfileRepository profileRepository;


  SocialMediaController(super.logger,this.profileRepository):super(
    dataGetter: profileRepository.getSocialMediaAccounts,
  );

}
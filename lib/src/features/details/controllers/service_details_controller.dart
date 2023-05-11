import 'package:nans/src/Data/models/service_details_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_nans_repository.dart';
import 'package:nans/src/core/controllers/custom_data_loader.dart';
import 'package:injectable/injectable.dart';

@injectable
class ServiceDetailsController extends CustomDataLoader<ServiceDetailsModel>{

  final String newsId;
  final INansRepository nansRepository;

  ServiceDetailsController(@factoryParam this.newsId,this.nansRepository,super.logger):super(
    dataGetter: ()=>nansRepository.getServiceDetails(id: newsId),
  );
}
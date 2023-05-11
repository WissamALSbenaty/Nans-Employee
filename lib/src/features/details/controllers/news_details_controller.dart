import 'package:nans/src/Data/models/news_details_model.dart';
import 'package:nans/src/Data/repositories/abstract/i_nans_repository.dart';
import 'package:nans/src/core/controllers/custom_data_loader.dart';
import 'package:injectable/injectable.dart';

@injectable
class NewsDetailsController extends CustomDataLoader<NewsDetailsModel>{

  final String newsId;
  final INansRepository nansRepository;

  NewsDetailsController(@factoryParam this.newsId,this.nansRepository,super.logger):super(
    dataGetter: ()=>nansRepository.getNewsDetails(id: newsId),
  );
}
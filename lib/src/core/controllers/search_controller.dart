
import 'package:drift/drift.dart';
import 'package:etloob/src/Data/Errors/core_errors.dart';
import 'package:etloob/src/Data/local_database_tables/app_database.dart';
import 'package:etloob/src/core/controllers/custom_list_data_loader.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'search_controller.g.dart';

@injectable
class SearchController extends SearchControllerBase with _$SearchController{
  SearchController(super.localDatabase,super.logger,);

}
abstract class SearchControllerBase extends CustomListDataLoader<Searche> with Store{

  final AppDatabase localDatabase  ;

  SearchControllerBase(this.localDatabase,super.logger,):super(
    dataGetter: localDatabase.getSearches,
    emptyDataError: EmptyItemsError(),
  );

  @observable
  String? searchString;

  @action
  Future<void> searchStringChanges(String newSearchString)async{
    localDatabase.insertSearch(SearchesCompanion(content: Value(newSearchString)));
    searchString= newSearchString;
  }

  @action
  Future<void> deleteSingleSearch(String singleSearch)async{
    Searche toDeleteSearch = dataList.firstWhere((element) => element.content==singleSearch);

    localDatabase.deleteSingleSearch(toDeleteSearch);
    loadData();
  }

  @action
  Future<void> clearAllHistory()async{
    localDatabase.deleteSearch();
    dataList.clear();
  }
}


import 'package:etloob/src/core/Data/local_database_tables/searches.dart';
import 'package:etloob/src/core/Data/local_database_tables/users.dart';
import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'app_database.g.dart';

@UseMoor(tables: [Users , Searches])
@singleton
 class AppDatabase extends _$AppDatabase {
  AppDatabase()
      :super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite',));

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration =>
      MigrationStrategy(onUpgrade: (migrator, from, to) async {
        if (from == 1) {
          await migrator.createTable(searches);
        }
      });


  Future<void> clearDatabase() async {
    Future.wait([
      deleteUser(),
      deleteSearch(),
    ]);
  }


  Future<User> getUser() => select(users).getSingle();

  Future insertUser(User singleUser) async {
    await deleteUser();
    return into(users).insert(singleUser);
  }

  Future deleteUser() => delete(users).go();

  Future deleteSearch() => delete(searches).go();

  Future deleteSingleSearch(Searche singleSearch) =>
      delete(searches).delete(singleSearch);

  Future insertSearch(SearchesCompanion singleSearch) async {
    const int searchesSavingLimit=5;

    if (singleSearch.content.value.length < 3) {
      return;
    }
    List<Searche> currentSearches = await getSearches();
    if (currentSearches.any((element) => element.content == singleSearch.content.value)) {
      return;
    }
    if (currentSearches.length >= searchesSavingLimit) {
      deleteSingleSearch(currentSearches.last);
    }
    return into(searches).insert(singleSearch);
  }


  Future<List<Searche>> getSearches() async {
    List<Searche> result = await select(searches).get();
    return result.reversed.toList();
  }
}




import 'dart:io';

import 'package:drift/drift.dart';
import 'package:nans/src/Data/local_database_tables/searches.dart';
import 'package:nans/src/Data/local_database_tables/users.dart';
import 'package:injectable/injectable.dart';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:drift/native.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Users , Searches])
@singleton
 class AppDatabase extends _$AppDatabase {

  AppDatabase() : super(_openConnection());
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

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}




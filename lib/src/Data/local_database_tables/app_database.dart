

import 'package:merit_driver/src/Data/local_database_tables/users.dart';
import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'app_database.g.dart';

@UseMoor(tables: [Users , ])
@singleton
 class AppDatabase extends _$AppDatabase {
  AppDatabase()
      :super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite',));

  @override
  int get schemaVersion => 1;

  /*@override
  MigrationStrategy get migration =>
      MigrationStrategy(onUpgrade: (migrator, from, to) async {
        if (from == 1) {

        }
      });*/


  Future<void> clearDatabase() async {
    Future.wait([
      deleteUser(),
    ]);
  }


  Future<User> getUser() => select(users).getSingle();

  Future insertUser(User singleUser) async {
    await deleteUser();
    return into(users).insert(singleUser);
  }

  Future deleteUser() => delete(users).go();

}


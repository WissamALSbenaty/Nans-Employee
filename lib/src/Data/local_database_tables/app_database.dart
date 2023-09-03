

import 'dart:io';

import 'package:drift/drift.dart';
import 'package:nans/src/Data/local_database_tables/users.dart';
import 'package:injectable/injectable.dart';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:drift/native.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Users ,])
@singleton
class AppDatabase extends _$AppDatabase {

  AppDatabase() : super(_openConnection());
  @override
  int get schemaVersion => 1;

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




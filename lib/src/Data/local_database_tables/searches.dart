import 'package:drift/drift.dart';


class Searches extends Table{
  TextColumn get content => text()();

  @override
  Set<Column> get primaryKey => {content};


}

import 'package:moor_flutter/moor_flutter.dart';


class Searches extends Table{
  TextColumn get content => text()();

  @override
  Set<Column> get primaryKey => {content};


}
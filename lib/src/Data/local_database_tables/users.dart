import 'package:drift/drift.dart';



class Users extends Table{
  TextColumn get name => text()();
  TextColumn get phoneNumber => text()();
  TextColumn get email => text()();
  TextColumn get password => text()();
  TextColumn get token => text()();

  @override
  Set<Column> get primaryKey => {token};


}
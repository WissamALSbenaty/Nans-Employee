import 'package:drift/drift.dart';



class Users extends Table{
  TextColumn get firstName => text()();
  TextColumn get lastName => text()();
  TextColumn get phoneNumber => text()();
  TextColumn get password => text()();
  TextColumn get token => text()();
  TextColumn get referralCode => text()();
  BoolColumn get isLoggedInBefore => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {token};


}
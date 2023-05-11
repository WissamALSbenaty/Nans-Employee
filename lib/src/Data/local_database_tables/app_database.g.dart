// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fatherNameMeta =
      const VerificationMeta('fatherName');
  @override
  late final GeneratedColumn<String> fatherName = GeneratedColumn<String>(
      'father_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _motherNameMeta =
      const VerificationMeta('motherName');
  @override
  late final GeneratedColumn<String> motherName = GeneratedColumn<String>(
      'mother_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneNumberMeta =
      const VerificationMeta('phoneNumber');
  @override
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
      'phone_number', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _passwordMeta =
      const VerificationMeta('password');
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
      'password', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _tokenMeta = const VerificationMeta('token');
  @override
  late final GeneratedColumn<String> token = GeneratedColumn<String>(
      'token', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [name, fatherName, motherName, phoneNumber, email, password, token];
  @override
  String get aliasedName => _alias ?? 'users';
  @override
  String get actualTableName => 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('father_name')) {
      context.handle(
          _fatherNameMeta,
          fatherName.isAcceptableOrUnknown(
              data['father_name']!, _fatherNameMeta));
    } else if (isInserting) {
      context.missing(_fatherNameMeta);
    }
    if (data.containsKey('mother_name')) {
      context.handle(
          _motherNameMeta,
          motherName.isAcceptableOrUnknown(
              data['mother_name']!, _motherNameMeta));
    } else if (isInserting) {
      context.missing(_motherNameMeta);
    }
    if (data.containsKey('phone_number')) {
      context.handle(
          _phoneNumberMeta,
          phoneNumber.isAcceptableOrUnknown(
              data['phone_number']!, _phoneNumberMeta));
    } else if (isInserting) {
      context.missing(_phoneNumberMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('token')) {
      context.handle(
          _tokenMeta, token.isAcceptableOrUnknown(data['token']!, _tokenMeta));
    } else if (isInserting) {
      context.missing(_tokenMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {token};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      fatherName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}father_name'])!,
      motherName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mother_name'])!,
      phoneNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone_number'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      password: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}password'])!,
      token: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}token'])!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final String name;
  final String fatherName;
  final String motherName;
  final String phoneNumber;
  final String email;
  final String password;
  final String token;
  const User(
      {required this.name,
      required this.fatherName,
      required this.motherName,
      required this.phoneNumber,
      required this.email,
      required this.password,
      required this.token});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['name'] = Variable<String>(name);
    map['father_name'] = Variable<String>(fatherName);
    map['mother_name'] = Variable<String>(motherName);
    map['phone_number'] = Variable<String>(phoneNumber);
    map['email'] = Variable<String>(email);
    map['password'] = Variable<String>(password);
    map['token'] = Variable<String>(token);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      name: Value(name),
      fatherName: Value(fatherName),
      motherName: Value(motherName),
      phoneNumber: Value(phoneNumber),
      email: Value(email),
      password: Value(password),
      token: Value(token),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      name: serializer.fromJson<String>(json['name']),
      fatherName: serializer.fromJson<String>(json['fatherName']),
      motherName: serializer.fromJson<String>(json['motherName']),
      phoneNumber: serializer.fromJson<String>(json['phoneNumber']),
      email: serializer.fromJson<String>(json['email']),
      password: serializer.fromJson<String>(json['password']),
      token: serializer.fromJson<String>(json['token']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'name': serializer.toJson<String>(name),
      'fatherName': serializer.toJson<String>(fatherName),
      'motherName': serializer.toJson<String>(motherName),
      'phoneNumber': serializer.toJson<String>(phoneNumber),
      'email': serializer.toJson<String>(email),
      'password': serializer.toJson<String>(password),
      'token': serializer.toJson<String>(token),
    };
  }

  User copyWith(
          {String? name,
          String? fatherName,
          String? motherName,
          String? phoneNumber,
          String? email,
          String? password,
          String? token}) =>
      User(
        name: name ?? this.name,
        fatherName: fatherName ?? this.fatherName,
        motherName: motherName ?? this.motherName,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        email: email ?? this.email,
        password: password ?? this.password,
        token: token ?? this.token,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('name: $name, ')
          ..write('fatherName: $fatherName, ')
          ..write('motherName: $motherName, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('token: $token')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      name, fatherName, motherName, phoneNumber, email, password, token);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.name == this.name &&
          other.fatherName == this.fatherName &&
          other.motherName == this.motherName &&
          other.phoneNumber == this.phoneNumber &&
          other.email == this.email &&
          other.password == this.password &&
          other.token == this.token);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> name;
  final Value<String> fatherName;
  final Value<String> motherName;
  final Value<String> phoneNumber;
  final Value<String> email;
  final Value<String> password;
  final Value<String> token;
  final Value<int> rowid;
  const UsersCompanion({
    this.name = const Value.absent(),
    this.fatherName = const Value.absent(),
    this.motherName = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.email = const Value.absent(),
    this.password = const Value.absent(),
    this.token = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UsersCompanion.insert({
    required String name,
    required String fatherName,
    required String motherName,
    required String phoneNumber,
    required String email,
    required String password,
    required String token,
    this.rowid = const Value.absent(),
  })  : name = Value(name),
        fatherName = Value(fatherName),
        motherName = Value(motherName),
        phoneNumber = Value(phoneNumber),
        email = Value(email),
        password = Value(password),
        token = Value(token);
  static Insertable<User> custom({
    Expression<String>? name,
    Expression<String>? fatherName,
    Expression<String>? motherName,
    Expression<String>? phoneNumber,
    Expression<String>? email,
    Expression<String>? password,
    Expression<String>? token,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (name != null) 'name': name,
      if (fatherName != null) 'father_name': fatherName,
      if (motherName != null) 'mother_name': motherName,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (token != null) 'token': token,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UsersCompanion copyWith(
      {Value<String>? name,
      Value<String>? fatherName,
      Value<String>? motherName,
      Value<String>? phoneNumber,
      Value<String>? email,
      Value<String>? password,
      Value<String>? token,
      Value<int>? rowid}) {
    return UsersCompanion(
      name: name ?? this.name,
      fatherName: fatherName ?? this.fatherName,
      motherName: motherName ?? this.motherName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      password: password ?? this.password,
      token: token ?? this.token,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (fatherName.present) {
      map['father_name'] = Variable<String>(fatherName.value);
    }
    if (motherName.present) {
      map['mother_name'] = Variable<String>(motherName.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (token.present) {
      map['token'] = Variable<String>(token.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('name: $name, ')
          ..write('fatherName: $fatherName, ')
          ..write('motherName: $motherName, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('token: $token, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SearchesTable extends Searches with TableInfo<$SearchesTable, Searche> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SearchesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [content];
  @override
  String get aliasedName => _alias ?? 'searches';
  @override
  String get actualTableName => 'searches';
  @override
  VerificationContext validateIntegrity(Insertable<Searche> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {content};
  @override
  Searche map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Searche(
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
    );
  }

  @override
  $SearchesTable createAlias(String alias) {
    return $SearchesTable(attachedDatabase, alias);
  }
}

class Searche extends DataClass implements Insertable<Searche> {
  final String content;
  const Searche({required this.content});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['content'] = Variable<String>(content);
    return map;
  }

  SearchesCompanion toCompanion(bool nullToAbsent) {
    return SearchesCompanion(
      content: Value(content),
    );
  }

  factory Searche.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Searche(
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'content': serializer.toJson<String>(content),
    };
  }

  Searche copyWith({String? content}) => Searche(
        content: content ?? this.content,
      );
  @override
  String toString() {
    return (StringBuffer('Searche(')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => content.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Searche && other.content == this.content);
}

class SearchesCompanion extends UpdateCompanion<Searche> {
  final Value<String> content;
  final Value<int> rowid;
  const SearchesCompanion({
    this.content = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SearchesCompanion.insert({
    required String content,
    this.rowid = const Value.absent(),
  }) : content = Value(content);
  static Insertable<Searche> custom({
    Expression<String>? content,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (content != null) 'content': content,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SearchesCompanion copyWith({Value<String>? content, Value<int>? rowid}) {
    return SearchesCompanion(
      content: content ?? this.content,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SearchesCompanion(')
          ..write('content: $content, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $UsersTable users = $UsersTable(this);
  late final $SearchesTable searches = $SearchesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users, searches];
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _firstNameMeta =
      const VerificationMeta('firstName');
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
      'first_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastNameMeta =
      const VerificationMeta('lastName');
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
      'last_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneNumberMeta =
      const VerificationMeta('phoneNumber');
  @override
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
      'phone_number', aliasedName, false,
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
  static const VerificationMeta _referralCodeMeta =
      const VerificationMeta('referralCode');
  @override
  late final GeneratedColumn<String> referralCode = GeneratedColumn<String>(
      'referral_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isLoggedInBeforeMeta =
      const VerificationMeta('isLoggedInBefore');
  @override
  late final GeneratedColumn<bool> isLoggedInBefore =
      GeneratedColumn<bool>('is_logged_in_before', aliasedName, false,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintsDependsOnDialect({
            SqlDialect.sqlite: 'CHECK ("is_logged_in_before" IN (0, 1))',
            SqlDialect.mysql: '',
            SqlDialect.postgres: '',
          }),
          defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        firstName,
        lastName,
        phoneNumber,
        password,
        token,
        referralCode,
        isLoggedInBefore
      ];
  @override
  String get aliasedName => _alias ?? 'users';
  @override
  String get actualTableName => 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta));
    } else if (isInserting) {
      context.missing(_firstNameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta));
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('phone_number')) {
      context.handle(
          _phoneNumberMeta,
          phoneNumber.isAcceptableOrUnknown(
              data['phone_number']!, _phoneNumberMeta));
    } else if (isInserting) {
      context.missing(_phoneNumberMeta);
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
    if (data.containsKey('referral_code')) {
      context.handle(
          _referralCodeMeta,
          referralCode.isAcceptableOrUnknown(
              data['referral_code']!, _referralCodeMeta));
    } else if (isInserting) {
      context.missing(_referralCodeMeta);
    }
    if (data.containsKey('is_logged_in_before')) {
      context.handle(
          _isLoggedInBeforeMeta,
          isLoggedInBefore.isAcceptableOrUnknown(
              data['is_logged_in_before']!, _isLoggedInBeforeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {token};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      firstName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}first_name'])!,
      lastName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_name'])!,
      phoneNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone_number'])!,
      password: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}password'])!,
      token: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}token'])!,
      referralCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}referral_code'])!,
      isLoggedInBefore: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_logged_in_before'])!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String password;
  final String token;
  final String referralCode;
  final bool isLoggedInBefore;
  const User(
      {required this.firstName,
      required this.lastName,
      required this.phoneNumber,
      required this.password,
      required this.token,
      required this.referralCode,
      required this.isLoggedInBefore});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['first_name'] = Variable<String>(firstName);
    map['last_name'] = Variable<String>(lastName);
    map['phone_number'] = Variable<String>(phoneNumber);
    map['password'] = Variable<String>(password);
    map['token'] = Variable<String>(token);
    map['referral_code'] = Variable<String>(referralCode);
    map['is_logged_in_before'] = Variable<bool>(isLoggedInBefore);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      firstName: Value(firstName),
      lastName: Value(lastName),
      phoneNumber: Value(phoneNumber),
      password: Value(password),
      token: Value(token),
      referralCode: Value(referralCode),
      isLoggedInBefore: Value(isLoggedInBefore),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      firstName: serializer.fromJson<String>(json['firstName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      phoneNumber: serializer.fromJson<String>(json['phoneNumber']),
      password: serializer.fromJson<String>(json['password']),
      token: serializer.fromJson<String>(json['token']),
      referralCode: serializer.fromJson<String>(json['referralCode']),
      isLoggedInBefore: serializer.fromJson<bool>(json['isLoggedInBefore']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'firstName': serializer.toJson<String>(firstName),
      'lastName': serializer.toJson<String>(lastName),
      'phoneNumber': serializer.toJson<String>(phoneNumber),
      'password': serializer.toJson<String>(password),
      'token': serializer.toJson<String>(token),
      'referralCode': serializer.toJson<String>(referralCode),
      'isLoggedInBefore': serializer.toJson<bool>(isLoggedInBefore),
    };
  }

  User copyWith(
          {String? firstName,
          String? lastName,
          String? phoneNumber,
          String? password,
          String? token,
          String? referralCode,
          bool? isLoggedInBefore}) =>
      User(
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        password: password ?? this.password,
        token: token ?? this.token,
        referralCode: referralCode ?? this.referralCode,
        isLoggedInBefore: isLoggedInBefore ?? this.isLoggedInBefore,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('password: $password, ')
          ..write('token: $token, ')
          ..write('referralCode: $referralCode, ')
          ..write('isLoggedInBefore: $isLoggedInBefore')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(firstName, lastName, phoneNumber, password,
      token, referralCode, isLoggedInBefore);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.phoneNumber == this.phoneNumber &&
          other.password == this.password &&
          other.token == this.token &&
          other.referralCode == this.referralCode &&
          other.isLoggedInBefore == this.isLoggedInBefore);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> firstName;
  final Value<String> lastName;
  final Value<String> phoneNumber;
  final Value<String> password;
  final Value<String> token;
  final Value<String> referralCode;
  final Value<bool> isLoggedInBefore;
  final Value<int> rowid;
  const UsersCompanion({
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.password = const Value.absent(),
    this.token = const Value.absent(),
    this.referralCode = const Value.absent(),
    this.isLoggedInBefore = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UsersCompanion.insert({
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String password,
    required String token,
    required String referralCode,
    this.isLoggedInBefore = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : firstName = Value(firstName),
        lastName = Value(lastName),
        phoneNumber = Value(phoneNumber),
        password = Value(password),
        token = Value(token),
        referralCode = Value(referralCode);
  static Insertable<User> custom({
    Expression<String>? firstName,
    Expression<String>? lastName,
    Expression<String>? phoneNumber,
    Expression<String>? password,
    Expression<String>? token,
    Expression<String>? referralCode,
    Expression<bool>? isLoggedInBefore,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (password != null) 'password': password,
      if (token != null) 'token': token,
      if (referralCode != null) 'referral_code': referralCode,
      if (isLoggedInBefore != null) 'is_logged_in_before': isLoggedInBefore,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UsersCompanion copyWith(
      {Value<String>? firstName,
      Value<String>? lastName,
      Value<String>? phoneNumber,
      Value<String>? password,
      Value<String>? token,
      Value<String>? referralCode,
      Value<bool>? isLoggedInBefore,
      Value<int>? rowid}) {
    return UsersCompanion(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      password: password ?? this.password,
      token: token ?? this.token,
      referralCode: referralCode ?? this.referralCode,
      isLoggedInBefore: isLoggedInBefore ?? this.isLoggedInBefore,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (token.present) {
      map['token'] = Variable<String>(token.value);
    }
    if (referralCode.present) {
      map['referral_code'] = Variable<String>(referralCode.value);
    }
    if (isLoggedInBefore.present) {
      map['is_logged_in_before'] = Variable<bool>(isLoggedInBefore.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('password: $password, ')
          ..write('token: $token, ')
          ..write('referralCode: $referralCode, ')
          ..write('isLoggedInBefore: $isLoggedInBefore, ')
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

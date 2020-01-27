// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class AreaType extends DataClass implements Insertable<AreaType> {
  final int id;
  final String title;
  AreaType({@required this.id, @required this.title});
  factory AreaType.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return AreaType(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
    );
  }
  factory AreaType.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AreaType(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
    };
  }

  @override
  AreaTypesCompanion createCompanion(bool nullToAbsent) {
    return AreaTypesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
    );
  }

  AreaType copyWith({int id, String title}) => AreaType(
        id: id ?? this.id,
        title: title ?? this.title,
      );
  @override
  String toString() {
    return (StringBuffer('AreaType(')
          ..write('id: $id, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, title.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is AreaType && other.id == this.id && other.title == this.title);
}

class AreaTypesCompanion extends UpdateCompanion<AreaType> {
  final Value<int> id;
  final Value<String> title;
  const AreaTypesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
  });
  AreaTypesCompanion.insert({
    this.id = const Value.absent(),
    @required String title,
  }) : title = Value(title);
  AreaTypesCompanion copyWith({Value<int> id, Value<String> title}) {
    return AreaTypesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
    );
  }
}

class $AreaTypesTable extends AreaTypes
    with TableInfo<$AreaTypesTable, AreaType> {
  final GeneratedDatabase _db;
  final String _alias;
  $AreaTypesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn('title', $tableName, false, minTextLength: 1);
  }

  @override
  List<GeneratedColumn> get $columns => [id, title];
  @override
  $AreaTypesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'area_types';
  @override
  final String actualTableName = 'area_types';
  @override
  VerificationContext validateIntegrity(AreaTypesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.title.present) {
      context.handle(
          _titleMeta, title.isAcceptableValue(d.title.value, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AreaType map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return AreaType.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(AreaTypesCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.title.present) {
      map['title'] = Variable<String, StringType>(d.title.value);
    }
    return map;
  }

  @override
  $AreaTypesTable createAlias(String alias) {
    return $AreaTypesTable(_db, alias);
  }
}

class ClassRCD extends DataClass implements Insertable<ClassRCD> {
  final int id;
  final String title;
  ClassRCD({@required this.id, @required this.title});
  factory ClassRCD.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return ClassRCD(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
    );
  }
  factory ClassRCD.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ClassRCD(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
    };
  }

  @override
  ClassRCDsCompanion createCompanion(bool nullToAbsent) {
    return ClassRCDsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
    );
  }

  ClassRCD copyWith({int id, String title}) => ClassRCD(
        id: id ?? this.id,
        title: title ?? this.title,
      );
  @override
  String toString() {
    return (StringBuffer('ClassRCD(')
          ..write('id: $id, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, title.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ClassRCD && other.id == this.id && other.title == this.title);
}

class ClassRCDsCompanion extends UpdateCompanion<ClassRCD> {
  final Value<int> id;
  final Value<String> title;
  const ClassRCDsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
  });
  ClassRCDsCompanion.insert({
    this.id = const Value.absent(),
    @required String title,
  }) : title = Value(title);
  ClassRCDsCompanion copyWith({Value<int> id, Value<String> title}) {
    return ClassRCDsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
    );
  }
}

class $ClassRCDsTable extends ClassRCDs
    with TableInfo<$ClassRCDsTable, ClassRCD> {
  final GeneratedDatabase _db;
  final String _alias;
  $ClassRCDsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn('title', $tableName, false,
        minTextLength: 1, maxTextLength: 20);
  }

  @override
  List<GeneratedColumn> get $columns => [id, title];
  @override
  $ClassRCDsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'class_r_c_ds';
  @override
  final String actualTableName = 'class_r_c_ds';
  @override
  VerificationContext validateIntegrity(ClassRCDsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.title.present) {
      context.handle(
          _titleMeta, title.isAcceptableValue(d.title.value, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {title};
  @override
  ClassRCD map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ClassRCD.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ClassRCDsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.title.present) {
      map['title'] = Variable<String, StringType>(d.title.value);
    }
    return map;
  }

  @override
  $ClassRCDsTable createAlias(String alias) {
    return $ClassRCDsTable(_db, alias);
  }
}

class TypeMaterial extends DataClass implements Insertable<TypeMaterial> {
  final int id;
  final String title;
  final int id_classRCD;
  TypeMaterial(
      {@required this.id, @required this.title, @required this.id_classRCD});
  factory TypeMaterial.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return TypeMaterial(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      id_classRCD: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_class_r_c_d']),
    );
  }
  factory TypeMaterial.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return TypeMaterial(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      id_classRCD: serializer.fromJson<int>(json['id_classRCD']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'id_classRCD': serializer.toJson<int>(id_classRCD),
    };
  }

  @override
  TypeMaterialsCompanion createCompanion(bool nullToAbsent) {
    return TypeMaterialsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      id_classRCD: id_classRCD == null && nullToAbsent
          ? const Value.absent()
          : Value(id_classRCD),
    );
  }

  TypeMaterial copyWith({int id, String title, int id_classRCD}) =>
      TypeMaterial(
        id: id ?? this.id,
        title: title ?? this.title,
        id_classRCD: id_classRCD ?? this.id_classRCD,
      );
  @override
  String toString() {
    return (StringBuffer('TypeMaterial(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('id_classRCD: $id_classRCD')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(title.hashCode, id_classRCD.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is TypeMaterial &&
          other.id == this.id &&
          other.title == this.title &&
          other.id_classRCD == this.id_classRCD);
}

class TypeMaterialsCompanion extends UpdateCompanion<TypeMaterial> {
  final Value<int> id;
  final Value<String> title;
  final Value<int> id_classRCD;
  const TypeMaterialsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.id_classRCD = const Value.absent(),
  });
  TypeMaterialsCompanion.insert({
    this.id = const Value.absent(),
    @required String title,
    @required int id_classRCD,
  })  : title = Value(title),
        id_classRCD = Value(id_classRCD);
  TypeMaterialsCompanion copyWith(
      {Value<int> id, Value<String> title, Value<int> id_classRCD}) {
    return TypeMaterialsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      id_classRCD: id_classRCD ?? this.id_classRCD,
    );
  }
}

class $TypeMaterialsTable extends TypeMaterials
    with TableInfo<$TypeMaterialsTable, TypeMaterial> {
  final GeneratedDatabase _db;
  final String _alias;
  $TypeMaterialsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn('title', $tableName, false, minTextLength: 1);
  }

  final VerificationMeta _id_classRCDMeta =
      const VerificationMeta('id_classRCD');
  GeneratedIntColumn _id_classRCD;
  @override
  GeneratedIntColumn get id_classRCD => _id_classRCD ??= _constructIdClassRCD();
  GeneratedIntColumn _constructIdClassRCD() {
    return GeneratedIntColumn(
      'id_class_r_c_d',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, title, id_classRCD];
  @override
  $TypeMaterialsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'type_materials';
  @override
  final String actualTableName = 'type_materials';
  @override
  VerificationContext validateIntegrity(TypeMaterialsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.title.present) {
      context.handle(
          _titleMeta, title.isAcceptableValue(d.title.value, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (d.id_classRCD.present) {
      context.handle(_id_classRCDMeta,
          id_classRCD.isAcceptableValue(d.id_classRCD.value, _id_classRCDMeta));
    } else if (isInserting) {
      context.missing(_id_classRCDMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TypeMaterial map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return TypeMaterial.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TypeMaterialsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.title.present) {
      map['title'] = Variable<String, StringType>(d.title.value);
    }
    if (d.id_classRCD.present) {
      map['id_class_r_c_d'] = Variable<int, IntType>(d.id_classRCD.value);
    }
    return map;
  }

  @override
  $TypeMaterialsTable createAlias(String alias) {
    return $TypeMaterialsTable(_db, alias);
  }
}

class Address extends DataClass implements Insertable<Address> {
  final int id;
  final String city;
  final String uF;
  final String thoroughfare;
  final String number;
  final String comp;
  final String neighborhood;
  Address(
      {@required this.id,
      @required this.city,
      @required this.uF,
      @required this.thoroughfare,
      @required this.number,
      @required this.comp,
      @required this.neighborhood});
  factory Address.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Address(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      city: stringType.mapFromDatabaseResponse(data['${effectivePrefix}city']),
      uF: stringType.mapFromDatabaseResponse(data['${effectivePrefix}u_f']),
      thoroughfare: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}thoroughfare']),
      number:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}number']),
      comp: stringType.mapFromDatabaseResponse(data['${effectivePrefix}comp']),
      neighborhood: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}neighborhood']),
    );
  }
  factory Address.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Address(
      id: serializer.fromJson<int>(json['id']),
      city: serializer.fromJson<String>(json['city']),
      uF: serializer.fromJson<String>(json['uF']),
      thoroughfare: serializer.fromJson<String>(json['thoroughfare']),
      number: serializer.fromJson<String>(json['number']),
      comp: serializer.fromJson<String>(json['comp']),
      neighborhood: serializer.fromJson<String>(json['neighborhood']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'city': serializer.toJson<String>(city),
      'uF': serializer.toJson<String>(uF),
      'thoroughfare': serializer.toJson<String>(thoroughfare),
      'number': serializer.toJson<String>(number),
      'comp': serializer.toJson<String>(comp),
      'neighborhood': serializer.toJson<String>(neighborhood),
    };
  }

  @override
  AddresssCompanion createCompanion(bool nullToAbsent) {
    return AddresssCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      uF: uF == null && nullToAbsent ? const Value.absent() : Value(uF),
      thoroughfare: thoroughfare == null && nullToAbsent
          ? const Value.absent()
          : Value(thoroughfare),
      number:
          number == null && nullToAbsent ? const Value.absent() : Value(number),
      comp: comp == null && nullToAbsent ? const Value.absent() : Value(comp),
      neighborhood: neighborhood == null && nullToAbsent
          ? const Value.absent()
          : Value(neighborhood),
    );
  }

  Address copyWith(
          {int id,
          String city,
          String uF,
          String thoroughfare,
          String number,
          String comp,
          String neighborhood}) =>
      Address(
        id: id ?? this.id,
        city: city ?? this.city,
        uF: uF ?? this.uF,
        thoroughfare: thoroughfare ?? this.thoroughfare,
        number: number ?? this.number,
        comp: comp ?? this.comp,
        neighborhood: neighborhood ?? this.neighborhood,
      );
  @override
  String toString() {
    return (StringBuffer('Address(')
          ..write('id: $id, ')
          ..write('city: $city, ')
          ..write('uF: $uF, ')
          ..write('thoroughfare: $thoroughfare, ')
          ..write('number: $number, ')
          ..write('comp: $comp, ')
          ..write('neighborhood: $neighborhood')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          city.hashCode,
          $mrjc(
              uF.hashCode,
              $mrjc(
                  thoroughfare.hashCode,
                  $mrjc(number.hashCode,
                      $mrjc(comp.hashCode, neighborhood.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Address &&
          other.id == this.id &&
          other.city == this.city &&
          other.uF == this.uF &&
          other.thoroughfare == this.thoroughfare &&
          other.number == this.number &&
          other.comp == this.comp &&
          other.neighborhood == this.neighborhood);
}

class AddresssCompanion extends UpdateCompanion<Address> {
  final Value<int> id;
  final Value<String> city;
  final Value<String> uF;
  final Value<String> thoroughfare;
  final Value<String> number;
  final Value<String> comp;
  final Value<String> neighborhood;
  const AddresssCompanion({
    this.id = const Value.absent(),
    this.city = const Value.absent(),
    this.uF = const Value.absent(),
    this.thoroughfare = const Value.absent(),
    this.number = const Value.absent(),
    this.comp = const Value.absent(),
    this.neighborhood = const Value.absent(),
  });
  AddresssCompanion.insert({
    this.id = const Value.absent(),
    @required String city,
    @required String uF,
    @required String thoroughfare,
    @required String number,
    @required String comp,
    @required String neighborhood,
  })  : city = Value(city),
        uF = Value(uF),
        thoroughfare = Value(thoroughfare),
        number = Value(number),
        comp = Value(comp),
        neighborhood = Value(neighborhood);
  AddresssCompanion copyWith(
      {Value<int> id,
      Value<String> city,
      Value<String> uF,
      Value<String> thoroughfare,
      Value<String> number,
      Value<String> comp,
      Value<String> neighborhood}) {
    return AddresssCompanion(
      id: id ?? this.id,
      city: city ?? this.city,
      uF: uF ?? this.uF,
      thoroughfare: thoroughfare ?? this.thoroughfare,
      number: number ?? this.number,
      comp: comp ?? this.comp,
      neighborhood: neighborhood ?? this.neighborhood,
    );
  }
}

class $AddresssTable extends Addresss with TableInfo<$AddresssTable, Address> {
  final GeneratedDatabase _db;
  final String _alias;
  $AddresssTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _cityMeta = const VerificationMeta('city');
  GeneratedTextColumn _city;
  @override
  GeneratedTextColumn get city => _city ??= _constructCity();
  GeneratedTextColumn _constructCity() {
    return GeneratedTextColumn(
      'city',
      $tableName,
      false,
    );
  }

  final VerificationMeta _uFMeta = const VerificationMeta('uF');
  GeneratedTextColumn _uF;
  @override
  GeneratedTextColumn get uF => _uF ??= _constructUF();
  GeneratedTextColumn _constructUF() {
    return GeneratedTextColumn(
      'u_f',
      $tableName,
      false,
    );
  }

  final VerificationMeta _thoroughfareMeta =
      const VerificationMeta('thoroughfare');
  GeneratedTextColumn _thoroughfare;
  @override
  GeneratedTextColumn get thoroughfare =>
      _thoroughfare ??= _constructThoroughfare();
  GeneratedTextColumn _constructThoroughfare() {
    return GeneratedTextColumn(
      'thoroughfare',
      $tableName,
      false,
    );
  }

  final VerificationMeta _numberMeta = const VerificationMeta('number');
  GeneratedTextColumn _number;
  @override
  GeneratedTextColumn get number => _number ??= _constructNumber();
  GeneratedTextColumn _constructNumber() {
    return GeneratedTextColumn(
      'number',
      $tableName,
      false,
    );
  }

  final VerificationMeta _compMeta = const VerificationMeta('comp');
  GeneratedTextColumn _comp;
  @override
  GeneratedTextColumn get comp => _comp ??= _constructComp();
  GeneratedTextColumn _constructComp() {
    return GeneratedTextColumn(
      'comp',
      $tableName,
      false,
    );
  }

  final VerificationMeta _neighborhoodMeta =
      const VerificationMeta('neighborhood');
  GeneratedTextColumn _neighborhood;
  @override
  GeneratedTextColumn get neighborhood =>
      _neighborhood ??= _constructNeighborhood();
  GeneratedTextColumn _constructNeighborhood() {
    return GeneratedTextColumn(
      'neighborhood',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, city, uF, thoroughfare, number, comp, neighborhood];
  @override
  $AddresssTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'addresss';
  @override
  final String actualTableName = 'addresss';
  @override
  VerificationContext validateIntegrity(AddresssCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.city.present) {
      context.handle(
          _cityMeta, city.isAcceptableValue(d.city.value, _cityMeta));
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (d.uF.present) {
      context.handle(_uFMeta, uF.isAcceptableValue(d.uF.value, _uFMeta));
    } else if (isInserting) {
      context.missing(_uFMeta);
    }
    if (d.thoroughfare.present) {
      context.handle(
          _thoroughfareMeta,
          thoroughfare.isAcceptableValue(
              d.thoroughfare.value, _thoroughfareMeta));
    } else if (isInserting) {
      context.missing(_thoroughfareMeta);
    }
    if (d.number.present) {
      context.handle(
          _numberMeta, number.isAcceptableValue(d.number.value, _numberMeta));
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (d.comp.present) {
      context.handle(
          _compMeta, comp.isAcceptableValue(d.comp.value, _compMeta));
    } else if (isInserting) {
      context.missing(_compMeta);
    }
    if (d.neighborhood.present) {
      context.handle(
          _neighborhoodMeta,
          neighborhood.isAcceptableValue(
              d.neighborhood.value, _neighborhoodMeta));
    } else if (isInserting) {
      context.missing(_neighborhoodMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Address map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Address.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(AddresssCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.city.present) {
      map['city'] = Variable<String, StringType>(d.city.value);
    }
    if (d.uF.present) {
      map['u_f'] = Variable<String, StringType>(d.uF.value);
    }
    if (d.thoroughfare.present) {
      map['thoroughfare'] = Variable<String, StringType>(d.thoroughfare.value);
    }
    if (d.number.present) {
      map['number'] = Variable<String, StringType>(d.number.value);
    }
    if (d.comp.present) {
      map['comp'] = Variable<String, StringType>(d.comp.value);
    }
    if (d.neighborhood.present) {
      map['neighborhood'] = Variable<String, StringType>(d.neighborhood.value);
    }
    return map;
  }

  @override
  $AddresssTable createAlias(String alias) {
    return $AddresssTable(_db, alias);
  }
}

class Coordinate extends DataClass implements Insertable<Coordinate> {
  final int id;
  final double latitude;
  final double longitude;
  Coordinate(
      {@required this.id, @required this.latitude, @required this.longitude});
  factory Coordinate.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final doubleType = db.typeSystem.forDartType<double>();
    return Coordinate(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      latitude: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}latitude']),
      longitude: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}longitude']),
    );
  }
  factory Coordinate.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Coordinate(
      id: serializer.fromJson<int>(json['id']),
      latitude: serializer.fromJson<double>(json['latitude']),
      longitude: serializer.fromJson<double>(json['longitude']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'latitude': serializer.toJson<double>(latitude),
      'longitude': serializer.toJson<double>(longitude),
    };
  }

  @override
  CoordinatesCompanion createCompanion(bool nullToAbsent) {
    return CoordinatesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      latitude: latitude == null && nullToAbsent
          ? const Value.absent()
          : Value(latitude),
      longitude: longitude == null && nullToAbsent
          ? const Value.absent()
          : Value(longitude),
    );
  }

  Coordinate copyWith({int id, double latitude, double longitude}) =>
      Coordinate(
        id: id ?? this.id,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
      );
  @override
  String toString() {
    return (StringBuffer('Coordinate(')
          ..write('id: $id, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(latitude.hashCode, longitude.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Coordinate &&
          other.id == this.id &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude);
}

class CoordinatesCompanion extends UpdateCompanion<Coordinate> {
  final Value<int> id;
  final Value<double> latitude;
  final Value<double> longitude;
  const CoordinatesCompanion({
    this.id = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
  });
  CoordinatesCompanion.insert({
    this.id = const Value.absent(),
    @required double latitude,
    @required double longitude,
  })  : latitude = Value(latitude),
        longitude = Value(longitude);
  CoordinatesCompanion copyWith(
      {Value<int> id, Value<double> latitude, Value<double> longitude}) {
    return CoordinatesCompanion(
      id: id ?? this.id,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }
}

class $CoordinatesTable extends Coordinates
    with TableInfo<$CoordinatesTable, Coordinate> {
  final GeneratedDatabase _db;
  final String _alias;
  $CoordinatesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  GeneratedRealColumn _latitude;
  @override
  GeneratedRealColumn get latitude => _latitude ??= _constructLatitude();
  GeneratedRealColumn _constructLatitude() {
    return GeneratedRealColumn(
      'latitude',
      $tableName,
      false,
    );
  }

  final VerificationMeta _longitudeMeta = const VerificationMeta('longitude');
  GeneratedRealColumn _longitude;
  @override
  GeneratedRealColumn get longitude => _longitude ??= _constructLongitude();
  GeneratedRealColumn _constructLongitude() {
    return GeneratedRealColumn(
      'longitude',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, latitude, longitude];
  @override
  $CoordinatesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'coordinates';
  @override
  final String actualTableName = 'coordinates';
  @override
  VerificationContext validateIntegrity(CoordinatesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.latitude.present) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableValue(d.latitude.value, _latitudeMeta));
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    if (d.longitude.present) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableValue(d.longitude.value, _longitudeMeta));
    } else if (isInserting) {
      context.missing(_longitudeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Coordinate map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Coordinate.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(CoordinatesCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.latitude.present) {
      map['latitude'] = Variable<double, RealType>(d.latitude.value);
    }
    if (d.longitude.present) {
      map['longitude'] = Variable<double, RealType>(d.longitude.value);
    }
    return map;
  }

  @override
  $CoordinatesTable createAlias(String alias) {
    return $CoordinatesTable(_db, alias);
  }
}

class DiscardRecord extends DataClass implements Insertable<DiscardRecord> {
  final int id;
  final double volume;
  final double bucketsQty;
  final String featureDisposition;
  final String descriptionLocation;
  final String photo;
  final DateTime date;
  final int id_Coordinate;
  final int id_Address;
  DiscardRecord(
      {@required this.id,
      @required this.volume,
      @required this.bucketsQty,
      @required this.featureDisposition,
      @required this.descriptionLocation,
      @required this.photo,
      @required this.date,
      @required this.id_Coordinate,
      @required this.id_Address});
  factory DiscardRecord.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final doubleType = db.typeSystem.forDartType<double>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return DiscardRecord(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      volume:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}volume']),
      bucketsQty: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}buckets_qty']),
      featureDisposition: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}feature_disposition']),
      descriptionLocation: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}description_location']),
      photo:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}photo']),
      date:
          dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}date']),
      id_Coordinate: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_coordinate']),
      id_Address:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_address']),
    );
  }
  factory DiscardRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return DiscardRecord(
      id: serializer.fromJson<int>(json['id']),
      volume: serializer.fromJson<double>(json['volume']),
      bucketsQty: serializer.fromJson<double>(json['bucketsQty']),
      featureDisposition:
          serializer.fromJson<String>(json['featureDisposition']),
      descriptionLocation:
          serializer.fromJson<String>(json['descriptionLocation']),
      photo: serializer.fromJson<String>(json['photo']),
      date: serializer.fromJson<DateTime>(json['date']),
      id_Coordinate: serializer.fromJson<int>(json['id_Coordinate']),
      id_Address: serializer.fromJson<int>(json['id_Address']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'volume': serializer.toJson<double>(volume),
      'bucketsQty': serializer.toJson<double>(bucketsQty),
      'featureDisposition': serializer.toJson<String>(featureDisposition),
      'descriptionLocation': serializer.toJson<String>(descriptionLocation),
      'photo': serializer.toJson<String>(photo),
      'date': serializer.toJson<DateTime>(date),
      'id_Coordinate': serializer.toJson<int>(id_Coordinate),
      'id_Address': serializer.toJson<int>(id_Address),
    };
  }

  @override
  DiscardRecordsCompanion createCompanion(bool nullToAbsent) {
    return DiscardRecordsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      volume:
          volume == null && nullToAbsent ? const Value.absent() : Value(volume),
      bucketsQty: bucketsQty == null && nullToAbsent
          ? const Value.absent()
          : Value(bucketsQty),
      featureDisposition: featureDisposition == null && nullToAbsent
          ? const Value.absent()
          : Value(featureDisposition),
      descriptionLocation: descriptionLocation == null && nullToAbsent
          ? const Value.absent()
          : Value(descriptionLocation),
      photo:
          photo == null && nullToAbsent ? const Value.absent() : Value(photo),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      id_Coordinate: id_Coordinate == null && nullToAbsent
          ? const Value.absent()
          : Value(id_Coordinate),
      id_Address: id_Address == null && nullToAbsent
          ? const Value.absent()
          : Value(id_Address),
    );
  }

  DiscardRecord copyWith(
          {int id,
          double volume,
          double bucketsQty,
          String featureDisposition,
          String descriptionLocation,
          String photo,
          DateTime date,
          int id_Coordinate,
          int id_Address}) =>
      DiscardRecord(
        id: id ?? this.id,
        volume: volume ?? this.volume,
        bucketsQty: bucketsQty ?? this.bucketsQty,
        featureDisposition: featureDisposition ?? this.featureDisposition,
        descriptionLocation: descriptionLocation ?? this.descriptionLocation,
        photo: photo ?? this.photo,
        date: date ?? this.date,
        id_Coordinate: id_Coordinate ?? this.id_Coordinate,
        id_Address: id_Address ?? this.id_Address,
      );
  @override
  String toString() {
    return (StringBuffer('DiscardRecord(')
          ..write('id: $id, ')
          ..write('volume: $volume, ')
          ..write('bucketsQty: $bucketsQty, ')
          ..write('featureDisposition: $featureDisposition, ')
          ..write('descriptionLocation: $descriptionLocation, ')
          ..write('photo: $photo, ')
          ..write('date: $date, ')
          ..write('id_Coordinate: $id_Coordinate, ')
          ..write('id_Address: $id_Address')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          volume.hashCode,
          $mrjc(
              bucketsQty.hashCode,
              $mrjc(
                  featureDisposition.hashCode,
                  $mrjc(
                      descriptionLocation.hashCode,
                      $mrjc(
                          photo.hashCode,
                          $mrjc(
                              date.hashCode,
                              $mrjc(id_Coordinate.hashCode,
                                  id_Address.hashCode)))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is DiscardRecord &&
          other.id == this.id &&
          other.volume == this.volume &&
          other.bucketsQty == this.bucketsQty &&
          other.featureDisposition == this.featureDisposition &&
          other.descriptionLocation == this.descriptionLocation &&
          other.photo == this.photo &&
          other.date == this.date &&
          other.id_Coordinate == this.id_Coordinate &&
          other.id_Address == this.id_Address);
}

class DiscardRecordsCompanion extends UpdateCompanion<DiscardRecord> {
  final Value<int> id;
  final Value<double> volume;
  final Value<double> bucketsQty;
  final Value<String> featureDisposition;
  final Value<String> descriptionLocation;
  final Value<String> photo;
  final Value<DateTime> date;
  final Value<int> id_Coordinate;
  final Value<int> id_Address;
  const DiscardRecordsCompanion({
    this.id = const Value.absent(),
    this.volume = const Value.absent(),
    this.bucketsQty = const Value.absent(),
    this.featureDisposition = const Value.absent(),
    this.descriptionLocation = const Value.absent(),
    this.photo = const Value.absent(),
    this.date = const Value.absent(),
    this.id_Coordinate = const Value.absent(),
    this.id_Address = const Value.absent(),
  });
  DiscardRecordsCompanion.insert({
    this.id = const Value.absent(),
    @required double volume,
    @required double bucketsQty,
    @required String featureDisposition,
    @required String descriptionLocation,
    @required String photo,
    @required DateTime date,
    @required int id_Coordinate,
    @required int id_Address,
  })  : volume = Value(volume),
        bucketsQty = Value(bucketsQty),
        featureDisposition = Value(featureDisposition),
        descriptionLocation = Value(descriptionLocation),
        photo = Value(photo),
        date = Value(date),
        id_Coordinate = Value(id_Coordinate),
        id_Address = Value(id_Address);
  DiscardRecordsCompanion copyWith(
      {Value<int> id,
      Value<double> volume,
      Value<double> bucketsQty,
      Value<String> featureDisposition,
      Value<String> descriptionLocation,
      Value<String> photo,
      Value<DateTime> date,
      Value<int> id_Coordinate,
      Value<int> id_Address}) {
    return DiscardRecordsCompanion(
      id: id ?? this.id,
      volume: volume ?? this.volume,
      bucketsQty: bucketsQty ?? this.bucketsQty,
      featureDisposition: featureDisposition ?? this.featureDisposition,
      descriptionLocation: descriptionLocation ?? this.descriptionLocation,
      photo: photo ?? this.photo,
      date: date ?? this.date,
      id_Coordinate: id_Coordinate ?? this.id_Coordinate,
      id_Address: id_Address ?? this.id_Address,
    );
  }
}

class $DiscardRecordsTable extends DiscardRecords
    with TableInfo<$DiscardRecordsTable, DiscardRecord> {
  final GeneratedDatabase _db;
  final String _alias;
  $DiscardRecordsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _volumeMeta = const VerificationMeta('volume');
  GeneratedRealColumn _volume;
  @override
  GeneratedRealColumn get volume => _volume ??= _constructVolume();
  GeneratedRealColumn _constructVolume() {
    return GeneratedRealColumn(
      'volume',
      $tableName,
      false,
    );
  }

  final VerificationMeta _bucketsQtyMeta = const VerificationMeta('bucketsQty');
  GeneratedRealColumn _bucketsQty;
  @override
  GeneratedRealColumn get bucketsQty => _bucketsQty ??= _constructBucketsQty();
  GeneratedRealColumn _constructBucketsQty() {
    return GeneratedRealColumn(
      'buckets_qty',
      $tableName,
      false,
    );
  }

  final VerificationMeta _featureDispositionMeta =
      const VerificationMeta('featureDisposition');
  GeneratedTextColumn _featureDisposition;
  @override
  GeneratedTextColumn get featureDisposition =>
      _featureDisposition ??= _constructFeatureDisposition();
  GeneratedTextColumn _constructFeatureDisposition() {
    return GeneratedTextColumn(
      'feature_disposition',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionLocationMeta =
      const VerificationMeta('descriptionLocation');
  GeneratedTextColumn _descriptionLocation;
  @override
  GeneratedTextColumn get descriptionLocation =>
      _descriptionLocation ??= _constructDescriptionLocation();
  GeneratedTextColumn _constructDescriptionLocation() {
    return GeneratedTextColumn(
      'description_location',
      $tableName,
      false,
    );
  }

  final VerificationMeta _photoMeta = const VerificationMeta('photo');
  GeneratedTextColumn _photo;
  @override
  GeneratedTextColumn get photo => _photo ??= _constructPhoto();
  GeneratedTextColumn _constructPhoto() {
    return GeneratedTextColumn(
      'photo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dateMeta = const VerificationMeta('date');
  GeneratedDateTimeColumn _date;
  @override
  GeneratedDateTimeColumn get date => _date ??= _constructDate();
  GeneratedDateTimeColumn _constructDate() {
    return GeneratedDateTimeColumn(
      'date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _id_CoordinateMeta =
      const VerificationMeta('id_Coordinate');
  GeneratedIntColumn _id_Coordinate;
  @override
  GeneratedIntColumn get id_Coordinate =>
      _id_Coordinate ??= _constructIdCoordinate();
  GeneratedIntColumn _constructIdCoordinate() {
    return GeneratedIntColumn(
      'id_coordinate',
      $tableName,
      false,
    );
  }

  final VerificationMeta _id_AddressMeta = const VerificationMeta('id_Address');
  GeneratedIntColumn _id_Address;
  @override
  GeneratedIntColumn get id_Address => _id_Address ??= _constructIdAddress();
  GeneratedIntColumn _constructIdAddress() {
    return GeneratedIntColumn(
      'id_address',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        volume,
        bucketsQty,
        featureDisposition,
        descriptionLocation,
        photo,
        date,
        id_Coordinate,
        id_Address
      ];
  @override
  $DiscardRecordsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'discard_records';
  @override
  final String actualTableName = 'discard_records';
  @override
  VerificationContext validateIntegrity(DiscardRecordsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.volume.present) {
      context.handle(
          _volumeMeta, volume.isAcceptableValue(d.volume.value, _volumeMeta));
    } else if (isInserting) {
      context.missing(_volumeMeta);
    }
    if (d.bucketsQty.present) {
      context.handle(_bucketsQtyMeta,
          bucketsQty.isAcceptableValue(d.bucketsQty.value, _bucketsQtyMeta));
    } else if (isInserting) {
      context.missing(_bucketsQtyMeta);
    }
    if (d.featureDisposition.present) {
      context.handle(
          _featureDispositionMeta,
          featureDisposition.isAcceptableValue(
              d.featureDisposition.value, _featureDispositionMeta));
    } else if (isInserting) {
      context.missing(_featureDispositionMeta);
    }
    if (d.descriptionLocation.present) {
      context.handle(
          _descriptionLocationMeta,
          descriptionLocation.isAcceptableValue(
              d.descriptionLocation.value, _descriptionLocationMeta));
    } else if (isInserting) {
      context.missing(_descriptionLocationMeta);
    }
    if (d.photo.present) {
      context.handle(
          _photoMeta, photo.isAcceptableValue(d.photo.value, _photoMeta));
    } else if (isInserting) {
      context.missing(_photoMeta);
    }
    if (d.date.present) {
      context.handle(
          _dateMeta, date.isAcceptableValue(d.date.value, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (d.id_Coordinate.present) {
      context.handle(
          _id_CoordinateMeta,
          id_Coordinate.isAcceptableValue(
              d.id_Coordinate.value, _id_CoordinateMeta));
    } else if (isInserting) {
      context.missing(_id_CoordinateMeta);
    }
    if (d.id_Address.present) {
      context.handle(_id_AddressMeta,
          id_Address.isAcceptableValue(d.id_Address.value, _id_AddressMeta));
    } else if (isInserting) {
      context.missing(_id_AddressMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DiscardRecord map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return DiscardRecord.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(DiscardRecordsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.volume.present) {
      map['volume'] = Variable<double, RealType>(d.volume.value);
    }
    if (d.bucketsQty.present) {
      map['buckets_qty'] = Variable<double, RealType>(d.bucketsQty.value);
    }
    if (d.featureDisposition.present) {
      map['feature_disposition'] =
          Variable<String, StringType>(d.featureDisposition.value);
    }
    if (d.descriptionLocation.present) {
      map['description_location'] =
          Variable<String, StringType>(d.descriptionLocation.value);
    }
    if (d.photo.present) {
      map['photo'] = Variable<String, StringType>(d.photo.value);
    }
    if (d.date.present) {
      map['date'] = Variable<DateTime, DateTimeType>(d.date.value);
    }
    if (d.id_Coordinate.present) {
      map['id_coordinate'] = Variable<int, IntType>(d.id_Coordinate.value);
    }
    if (d.id_Address.present) {
      map['id_address'] = Variable<int, IntType>(d.id_Address.value);
    }
    return map;
  }

  @override
  $DiscardRecordsTable createAlias(String alias) {
    return $DiscardRecordsTable(_db, alias);
  }
}

class RealRecordArea extends DataClass implements Insertable<RealRecordArea> {
  final int discardRecord;
  final int areaType;
  RealRecordArea({@required this.discardRecord, @required this.areaType});
  factory RealRecordArea.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return RealRecordArea(
      discardRecord: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}discard_record']),
      areaType:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}area_type']),
    );
  }
  factory RealRecordArea.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return RealRecordArea(
      discardRecord: serializer.fromJson<int>(json['discardRecord']),
      areaType: serializer.fromJson<int>(json['areaType']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'discardRecord': serializer.toJson<int>(discardRecord),
      'areaType': serializer.toJson<int>(areaType),
    };
  }

  @override
  RealRecordAreasCompanion createCompanion(bool nullToAbsent) {
    return RealRecordAreasCompanion(
      discardRecord: discardRecord == null && nullToAbsent
          ? const Value.absent()
          : Value(discardRecord),
      areaType: areaType == null && nullToAbsent
          ? const Value.absent()
          : Value(areaType),
    );
  }

  RealRecordArea copyWith({int discardRecord, int areaType}) => RealRecordArea(
        discardRecord: discardRecord ?? this.discardRecord,
        areaType: areaType ?? this.areaType,
      );
  @override
  String toString() {
    return (StringBuffer('RealRecordArea(')
          ..write('discardRecord: $discardRecord, ')
          ..write('areaType: $areaType')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(discardRecord.hashCode, areaType.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is RealRecordArea &&
          other.discardRecord == this.discardRecord &&
          other.areaType == this.areaType);
}

class RealRecordAreasCompanion extends UpdateCompanion<RealRecordArea> {
  final Value<int> discardRecord;
  final Value<int> areaType;
  const RealRecordAreasCompanion({
    this.discardRecord = const Value.absent(),
    this.areaType = const Value.absent(),
  });
  RealRecordAreasCompanion.insert({
    @required int discardRecord,
    @required int areaType,
  })  : discardRecord = Value(discardRecord),
        areaType = Value(areaType);
  RealRecordAreasCompanion copyWith(
      {Value<int> discardRecord, Value<int> areaType}) {
    return RealRecordAreasCompanion(
      discardRecord: discardRecord ?? this.discardRecord,
      areaType: areaType ?? this.areaType,
    );
  }
}

class $RealRecordAreasTable extends RealRecordAreas
    with TableInfo<$RealRecordAreasTable, RealRecordArea> {
  final GeneratedDatabase _db;
  final String _alias;
  $RealRecordAreasTable(this._db, [this._alias]);
  final VerificationMeta _discardRecordMeta =
      const VerificationMeta('discardRecord');
  GeneratedIntColumn _discardRecord;
  @override
  GeneratedIntColumn get discardRecord =>
      _discardRecord ??= _constructDiscardRecord();
  GeneratedIntColumn _constructDiscardRecord() {
    return GeneratedIntColumn(
      'discard_record',
      $tableName,
      false,
    );
  }

  final VerificationMeta _areaTypeMeta = const VerificationMeta('areaType');
  GeneratedIntColumn _areaType;
  @override
  GeneratedIntColumn get areaType => _areaType ??= _constructAreaType();
  GeneratedIntColumn _constructAreaType() {
    return GeneratedIntColumn(
      'area_type',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [discardRecord, areaType];
  @override
  $RealRecordAreasTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'real_record_areas';
  @override
  final String actualTableName = 'real_record_areas';
  @override
  VerificationContext validateIntegrity(RealRecordAreasCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.discardRecord.present) {
      context.handle(
          _discardRecordMeta,
          discardRecord.isAcceptableValue(
              d.discardRecord.value, _discardRecordMeta));
    } else if (isInserting) {
      context.missing(_discardRecordMeta);
    }
    if (d.areaType.present) {
      context.handle(_areaTypeMeta,
          areaType.isAcceptableValue(d.areaType.value, _areaTypeMeta));
    } else if (isInserting) {
      context.missing(_areaTypeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  RealRecordArea map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return RealRecordArea.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(RealRecordAreasCompanion d) {
    final map = <String, Variable>{};
    if (d.discardRecord.present) {
      map['discard_record'] = Variable<int, IntType>(d.discardRecord.value);
    }
    if (d.areaType.present) {
      map['area_type'] = Variable<int, IntType>(d.areaType.value);
    }
    return map;
  }

  @override
  $RealRecordAreasTable createAlias(String alias) {
    return $RealRecordAreasTable(_db, alias);
  }
}

class RealRecordClassesRCD extends DataClass
    implements Insertable<RealRecordClassesRCD> {
  final int discardRecord;
  final int classRCD;
  RealRecordClassesRCD({@required this.discardRecord, @required this.classRCD});
  factory RealRecordClassesRCD.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return RealRecordClassesRCD(
      discardRecord: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}discard_record']),
      classRCD: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}class_r_c_d']),
    );
  }
  factory RealRecordClassesRCD.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return RealRecordClassesRCD(
      discardRecord: serializer.fromJson<int>(json['discardRecord']),
      classRCD: serializer.fromJson<int>(json['classRCD']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'discardRecord': serializer.toJson<int>(discardRecord),
      'classRCD': serializer.toJson<int>(classRCD),
    };
  }

  @override
  RealRecordClassesRCDsCompanion createCompanion(bool nullToAbsent) {
    return RealRecordClassesRCDsCompanion(
      discardRecord: discardRecord == null && nullToAbsent
          ? const Value.absent()
          : Value(discardRecord),
      classRCD: classRCD == null && nullToAbsent
          ? const Value.absent()
          : Value(classRCD),
    );
  }

  RealRecordClassesRCD copyWith({int discardRecord, int classRCD}) =>
      RealRecordClassesRCD(
        discardRecord: discardRecord ?? this.discardRecord,
        classRCD: classRCD ?? this.classRCD,
      );
  @override
  String toString() {
    return (StringBuffer('RealRecordClassesRCD(')
          ..write('discardRecord: $discardRecord, ')
          ..write('classRCD: $classRCD')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(discardRecord.hashCode, classRCD.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is RealRecordClassesRCD &&
          other.discardRecord == this.discardRecord &&
          other.classRCD == this.classRCD);
}

class RealRecordClassesRCDsCompanion
    extends UpdateCompanion<RealRecordClassesRCD> {
  final Value<int> discardRecord;
  final Value<int> classRCD;
  const RealRecordClassesRCDsCompanion({
    this.discardRecord = const Value.absent(),
    this.classRCD = const Value.absent(),
  });
  RealRecordClassesRCDsCompanion.insert({
    @required int discardRecord,
    @required int classRCD,
  })  : discardRecord = Value(discardRecord),
        classRCD = Value(classRCD);
  RealRecordClassesRCDsCompanion copyWith(
      {Value<int> discardRecord, Value<int> classRCD}) {
    return RealRecordClassesRCDsCompanion(
      discardRecord: discardRecord ?? this.discardRecord,
      classRCD: classRCD ?? this.classRCD,
    );
  }
}

class $RealRecordClassesRCDsTable extends RealRecordClassesRCDs
    with TableInfo<$RealRecordClassesRCDsTable, RealRecordClassesRCD> {
  final GeneratedDatabase _db;
  final String _alias;
  $RealRecordClassesRCDsTable(this._db, [this._alias]);
  final VerificationMeta _discardRecordMeta =
      const VerificationMeta('discardRecord');
  GeneratedIntColumn _discardRecord;
  @override
  GeneratedIntColumn get discardRecord =>
      _discardRecord ??= _constructDiscardRecord();
  GeneratedIntColumn _constructDiscardRecord() {
    return GeneratedIntColumn(
      'discard_record',
      $tableName,
      false,
    );
  }

  final VerificationMeta _classRCDMeta = const VerificationMeta('classRCD');
  GeneratedIntColumn _classRCD;
  @override
  GeneratedIntColumn get classRCD => _classRCD ??= _constructClassRCD();
  GeneratedIntColumn _constructClassRCD() {
    return GeneratedIntColumn(
      'class_r_c_d',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [discardRecord, classRCD];
  @override
  $RealRecordClassesRCDsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'real_record_classes_r_c_ds';
  @override
  final String actualTableName = 'real_record_classes_r_c_ds';
  @override
  VerificationContext validateIntegrity(RealRecordClassesRCDsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.discardRecord.present) {
      context.handle(
          _discardRecordMeta,
          discardRecord.isAcceptableValue(
              d.discardRecord.value, _discardRecordMeta));
    } else if (isInserting) {
      context.missing(_discardRecordMeta);
    }
    if (d.classRCD.present) {
      context.handle(_classRCDMeta,
          classRCD.isAcceptableValue(d.classRCD.value, _classRCDMeta));
    } else if (isInserting) {
      context.missing(_classRCDMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  RealRecordClassesRCD map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return RealRecordClassesRCD.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(RealRecordClassesRCDsCompanion d) {
    final map = <String, Variable>{};
    if (d.discardRecord.present) {
      map['discard_record'] = Variable<int, IntType>(d.discardRecord.value);
    }
    if (d.classRCD.present) {
      map['class_r_c_d'] = Variable<int, IntType>(d.classRCD.value);
    }
    return map;
  }

  @override
  $RealRecordClassesRCDsTable createAlias(String alias) {
    return $RealRecordClassesRCDsTable(_db, alias);
  }
}

class RealRecordMat extends DataClass implements Insertable<RealRecordMat> {
  final int discardRecord;
  final int typeMaterial;
  RealRecordMat({@required this.discardRecord, @required this.typeMaterial});
  factory RealRecordMat.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return RealRecordMat(
      discardRecord: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}discard_record']),
      typeMaterial: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}type_material']),
    );
  }
  factory RealRecordMat.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return RealRecordMat(
      discardRecord: serializer.fromJson<int>(json['discardRecord']),
      typeMaterial: serializer.fromJson<int>(json['typeMaterial']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'discardRecord': serializer.toJson<int>(discardRecord),
      'typeMaterial': serializer.toJson<int>(typeMaterial),
    };
  }

  @override
  RealRecordMatsCompanion createCompanion(bool nullToAbsent) {
    return RealRecordMatsCompanion(
      discardRecord: discardRecord == null && nullToAbsent
          ? const Value.absent()
          : Value(discardRecord),
      typeMaterial: typeMaterial == null && nullToAbsent
          ? const Value.absent()
          : Value(typeMaterial),
    );
  }

  RealRecordMat copyWith({int discardRecord, int typeMaterial}) =>
      RealRecordMat(
        discardRecord: discardRecord ?? this.discardRecord,
        typeMaterial: typeMaterial ?? this.typeMaterial,
      );
  @override
  String toString() {
    return (StringBuffer('RealRecordMat(')
          ..write('discardRecord: $discardRecord, ')
          ..write('typeMaterial: $typeMaterial')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(discardRecord.hashCode, typeMaterial.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is RealRecordMat &&
          other.discardRecord == this.discardRecord &&
          other.typeMaterial == this.typeMaterial);
}

class RealRecordMatsCompanion extends UpdateCompanion<RealRecordMat> {
  final Value<int> discardRecord;
  final Value<int> typeMaterial;
  const RealRecordMatsCompanion({
    this.discardRecord = const Value.absent(),
    this.typeMaterial = const Value.absent(),
  });
  RealRecordMatsCompanion.insert({
    @required int discardRecord,
    @required int typeMaterial,
  })  : discardRecord = Value(discardRecord),
        typeMaterial = Value(typeMaterial);
  RealRecordMatsCompanion copyWith(
      {Value<int> discardRecord, Value<int> typeMaterial}) {
    return RealRecordMatsCompanion(
      discardRecord: discardRecord ?? this.discardRecord,
      typeMaterial: typeMaterial ?? this.typeMaterial,
    );
  }
}

class $RealRecordMatsTable extends RealRecordMats
    with TableInfo<$RealRecordMatsTable, RealRecordMat> {
  final GeneratedDatabase _db;
  final String _alias;
  $RealRecordMatsTable(this._db, [this._alias]);
  final VerificationMeta _discardRecordMeta =
      const VerificationMeta('discardRecord');
  GeneratedIntColumn _discardRecord;
  @override
  GeneratedIntColumn get discardRecord =>
      _discardRecord ??= _constructDiscardRecord();
  GeneratedIntColumn _constructDiscardRecord() {
    return GeneratedIntColumn(
      'discard_record',
      $tableName,
      false,
    );
  }

  final VerificationMeta _typeMaterialMeta =
      const VerificationMeta('typeMaterial');
  GeneratedIntColumn _typeMaterial;
  @override
  GeneratedIntColumn get typeMaterial =>
      _typeMaterial ??= _constructTypeMaterial();
  GeneratedIntColumn _constructTypeMaterial() {
    return GeneratedIntColumn(
      'type_material',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [discardRecord, typeMaterial];
  @override
  $RealRecordMatsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'real_record_mats';
  @override
  final String actualTableName = 'real_record_mats';
  @override
  VerificationContext validateIntegrity(RealRecordMatsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.discardRecord.present) {
      context.handle(
          _discardRecordMeta,
          discardRecord.isAcceptableValue(
              d.discardRecord.value, _discardRecordMeta));
    } else if (isInserting) {
      context.missing(_discardRecordMeta);
    }
    if (d.typeMaterial.present) {
      context.handle(
          _typeMaterialMeta,
          typeMaterial.isAcceptableValue(
              d.typeMaterial.value, _typeMaterialMeta));
    } else if (isInserting) {
      context.missing(_typeMaterialMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  RealRecordMat map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return RealRecordMat.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(RealRecordMatsCompanion d) {
    final map = <String, Variable>{};
    if (d.discardRecord.present) {
      map['discard_record'] = Variable<int, IntType>(d.discardRecord.value);
    }
    if (d.typeMaterial.present) {
      map['type_material'] = Variable<int, IntType>(d.typeMaterial.value);
    }
    return map;
  }

  @override
  $RealRecordMatsTable createAlias(String alias) {
    return $RealRecordMatsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $AreaTypesTable _areaTypes;
  $AreaTypesTable get areaTypes => _areaTypes ??= $AreaTypesTable(this);
  $ClassRCDsTable _classRCDs;
  $ClassRCDsTable get classRCDs => _classRCDs ??= $ClassRCDsTable(this);
  $TypeMaterialsTable _typeMaterials;
  $TypeMaterialsTable get typeMaterials =>
      _typeMaterials ??= $TypeMaterialsTable(this);
  $AddresssTable _addresss;
  $AddresssTable get addresss => _addresss ??= $AddresssTable(this);
  $CoordinatesTable _coordinates;
  $CoordinatesTable get coordinates => _coordinates ??= $CoordinatesTable(this);
  $DiscardRecordsTable _discardRecords;
  $DiscardRecordsTable get discardRecords =>
      _discardRecords ??= $DiscardRecordsTable(this);
  $RealRecordAreasTable _realRecordAreas;
  $RealRecordAreasTable get realRecordAreas =>
      _realRecordAreas ??= $RealRecordAreasTable(this);
  $RealRecordClassesRCDsTable _realRecordClassesRCDs;
  $RealRecordClassesRCDsTable get realRecordClassesRCDs =>
      _realRecordClassesRCDs ??= $RealRecordClassesRCDsTable(this);
  $RealRecordMatsTable _realRecordMats;
  $RealRecordMatsTable get realRecordMats =>
      _realRecordMats ??= $RealRecordMatsTable(this);
  AreaTypeDao _areaTypeDao;
  AreaTypeDao get areaTypeDao =>
      _areaTypeDao ??= AreaTypeDao(this as AppDatabase);
  ClassRCDDao _classRCDDao;
  ClassRCDDao get classRCDDao =>
      _classRCDDao ??= ClassRCDDao(this as AppDatabase);
  TypeMaterialDao _typeMaterialDao;
  TypeMaterialDao get typeMaterialDao =>
      _typeMaterialDao ??= TypeMaterialDao(this as AppDatabase);
  AddressDao _addressDao;
  AddressDao get addressDao => _addressDao ??= AddressDao(this as AppDatabase);
  CoordinateDao _coordinateDao;
  CoordinateDao get coordinateDao =>
      _coordinateDao ??= CoordinateDao(this as AppDatabase);
  DiscardRecordDao _discardRecordDao;
  DiscardRecordDao get discardRecordDao =>
      _discardRecordDao ??= DiscardRecordDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        areaTypes,
        classRCDs,
        typeMaterials,
        addresss,
        coordinates,
        discardRecords,
        realRecordAreas,
        realRecordClassesRCDs,
        realRecordMats
      ];
}

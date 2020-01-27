// Gerar  SQLite
// flutter packages pub run build_runner build

import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'dao/AddressDao.dart';
import 'dao/AreaTypeDao.dart';
import 'dao/ClassRCDDao.dart';
import 'dao/CoordinateDao.dart';
import 'dao/DiscardRecordDao.dart';
import 'dao/TypeMaterialDao.dart';

part 'moor_database.g.dart';

class AreaTypes extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1)();
}

class ClassRCDs extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1, max: 20)();
  @override
  Set<Column> get primaryKey => {title};
}

class TypeMaterials extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1)();
  IntColumn get id_classRCD => integer()();
}

class Addresss extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get city => text()();
  TextColumn get uF => text()();
  TextColumn get thoroughfare => text()();
  TextColumn get number => text()();
  TextColumn get comp => text()();
  TextColumn get neighborhood => text()();
}

class Coordinates extends Table {
  IntColumn get id => integer().autoIncrement()();
  RealColumn get latitude => real()();
  RealColumn get longitude => real()();
}

@DataClassName('DiscardRecord')
class DiscardRecords extends Table {
  IntColumn get id => integer().autoIncrement()();

  RealColumn get volume => real()();
  RealColumn get bucketsQty => real()();
  TextColumn get featureDisposition => text()();
  TextColumn get descriptionLocation => text()();
  TextColumn get photo => text()();
  DateTimeColumn get date => dateTime()();
  IntColumn get id_Coordinate => integer()();
  IntColumn get id_Address => integer()();
  // List<ClassRCD2> classRCDs;
  // List<AreaType2> areaTypes;
  // List<TypeMaterial2> materialTypes;
}

//------------------------------AppDatabase---------------------------------------------------------------------
// This annotation tells the code generator which tables this DB works with
@UseMoor(tables: [
  AreaTypes,
  ClassRCDs,
  TypeMaterials,
  Addresss,
  Coordinates,
  DiscardRecords,
  RealRecordAreas,
  RealRecordClassesRCDs,
  RealRecordMats
], daos: [
  AreaTypeDao,
  ClassRCDDao,
  TypeMaterialDao,
  AddressDao,
  CoordinateDao,
  DiscardRecordDao
])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super((FlutterQueryExecutor.inDatabaseFolder(
          path: 'dbnew.sqlite',
          logStatements: true,
        )));

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        beforeOpen: (details) async {
          await customStatement('PRAGMA foreign_keys = ON');
          if (details.wasCreated) {

            // create default element in tables
            //Andress
            final endereco = await into(addresss).insert(
              AddresssCompanion(
                city: const Value('city'),
                uF: const Value('uF'),
                thoroughfare: const Value('thoroughfare'),
                number: const Value('number'),
                comp: const Value('comp'),
                neighborhood: const Value('neighborhood'),
              ),
            );

            //Coordinates
            final cordenada = await into(coordinates).insert(
              CoordinatesCompanion(
                latitude: const Value(200),
                longitude: const Value(100),
              ),
            );

            // record
            DateTime testedata = DateTime.now();
            await into(discardRecords).insert(
              DiscardRecordsCompanion(
                  volume: const Value(4),
                  bucketsQty: const Value(4),
                  featureDisposition: const Value('featureDisposition'),
                  descriptionLocation: const Value("descriptionLocation"),
                  photo: const Value("photo"),
                  date: Value(testedata),
                  id_Coordinate: Value(cordenada),
                  id_Address: Value(endereco)),
            );
            //Tipo de area
            await into(areaTypes).insert(
              AreaTypesCompanion(
                title: const Value('Terreno Baldio'),
              ),
            );

            // Classes RCD
            final idA = await into(classRCDs).insert(
              ClassRCDsCompanion(
                title: const Value('A'),
              ),
            );
            final idB = await into(classRCDs).insert(
              ClassRCDsCompanion(
                title: const Value('B'),
              ),
            );
         
            //Tipo de Material
            await into(typeMaterials).insert(
              TypeMaterialsCompanion(
                title: const Value('Solos'),
                id_classRCD: Value(idA),
              ),
            );
            await into(typeMaterials).insert(
              TypeMaterialsCompanion(
                title: const Value('Cerâmicos'),
                id_classRCD: Value(idA),
              ),
            );
       
            await into(typeMaterials).insert(
              TypeMaterialsCompanion(
                title: const Value('Papéis'),
                id_classRCD: Value(idB),
              ),
            );
            await into(typeMaterials).insert(
              TypeMaterialsCompanion(
                title: const Value('Papelão'),
                id_classRCD: Value(idB),
              ),
            );
          }
        },
      );
}

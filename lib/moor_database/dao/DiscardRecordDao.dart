import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:rxdart/rxdart.dart';

import '../moor_database.dart';

part 'DiscardRecordDao.g.dart';

// relacionamento enre registro e tipo de Area
@DataClassName('RealRecordArea')
class RealRecordAreas extends Table {
  IntColumn get discardRecord => integer()();
  IntColumn get areaType => integer()();
}

// relacionamento enre registro e ClasseRCD
@DataClassName('RealRecordClassesRCD')
class RealRecordClassesRCDs extends Table {
  IntColumn get discardRecord => integer()();
  IntColumn get classRCD => integer()();
}

// relacionamento enre registro e tipo de material
@DataClassName('RealRecordMat')
class RealRecordMats extends Table {
  IntColumn get discardRecord => integer()();
  IntColumn get typeMaterial => integer()();
}

/// Represents a full shopping cart with all its items.
@DataClassName('RecordWithArea')
class RecordWithAll {
  final DiscardRecord record;
  final List<AreaType> areaTypes;
  final List<ClassRCD> classRCDs;
  final List<TypeMaterial> typeMaterials;
  final Address anddress;
  final Coordinate coordinate;

  RecordWithAll(this.record, this.areaTypes, this.classRCDs, this.typeMaterials,
      this.anddress, this.coordinate);
}

@UseDao(tables: [
  DiscardRecords,
  AreaTypes,
  ClassRCDs,
  TypeMaterials,
  Addresss,
  Coordinates,
  RealRecordAreas,
  RealRecordClassesRCDs,
  RealRecordMats
])
class DiscardRecordDao extends DatabaseAccessor<AppDatabase>
    with _$DiscardRecordDaoMixin {
  final AppDatabase db;

  DiscardRecordDao(this.db) : super(db);

  Stream<List<RecordWithAll>> watchAllRecords() {
    final recordStream = Observable(select(discardRecords).watch());

    return recordStream.switchMap((records) {
      final idToRecord = {for (var record in records) record.id: record};
      final ids = idToRecord.keys;

      final entryQuery = select(discardRecords).join(
        [
          innerJoin(realRecordAreas,
              realRecordAreas.discardRecord.equalsExp(discardRecords.id)),
        ],
      )..where(isIn(realRecordAreas.discardRecord, ids));
      entryQuery.map((row) {
        print(row);
      });
      return entryQuery.watch().map((rows) {
        final idToItems = <int, List<AreaType>>{};
        for (var row in rows) {
          final areaType = row.readTable(areaTypes);
          final id = row.readTable(realRecordAreas).discardRecord;

          idToItems.putIfAbsent(id, () => []).add(areaType);
        }
        return [];
        //  [
        //   for (var id in ids) RecordWithAll(idToRecord[id], idToItems[id] ?? []),
        // ];
      });
    });
  }

  //Insert

}


import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

import '../moor_database.dart';

part 'ClassRCDDao.g.dart';

@UseDao(tables: [ClassRCDs])
class ClassRCDDao extends DatabaseAccessor<AppDatabase>
    with _$ClassRCDDaoMixin {
  final AppDatabase db;

  ClassRCDDao(this.db) : super(db);

  Stream<List<ClassRCD>> watchClassRCDs() => select(classRCDs).watch();

  Future insertClassRCD(Insertable<ClassRCD> classRCD) =>
      into(classRCDs).insert(classRCD);
}

import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

import '../moor_database.dart';

part 'AreaTypeDao.g.dart';

@UseDao(tables: [AreaTypes])
class AreaTypeDao extends DatabaseAccessor<AppDatabase>
    with _$AreaTypeDaoMixin {
  final AppDatabase db;

  AreaTypeDao(this.db) : super(db);

  // All tables have getters in the generated class - we can select the areaTypes table
  Future<List<AreaType>> getAllAreaTypes() => select(areaTypes).get();

  // Updated to use the orderBy statement
  Stream<List<AreaType>> watchAllAreaTypes() {
    return (select(areaTypes)
          ..orderBy(
            ([
              (t) => OrderingTerm(expression: t.title),
            ]),
          ))
        .watch();
  }

  Future insertAreaType(Insertable<AreaType> areaType) =>
      into(areaTypes).insert(areaType);

  // Updates a AreaType with a matching primary key
  Future updateAreaType(Insertable<AreaType> tasareaTypek) =>
      update(areaTypes).replace(tasareaTypek);

  Future deleteAreaType(Insertable<AreaType> areaType) =>
      delete(areaTypes).delete(areaType);
}

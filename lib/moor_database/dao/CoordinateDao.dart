
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

import '../moor_database.dart';

part 'CoordinateDao.g.dart';


@UseDao(tables: [Coordinates])
class CoordinateDao extends DatabaseAccessor<AppDatabase>
    with _$CoordinateDaoMixin {
  final AppDatabase db;

  CoordinateDao(this.db) : super(db);

  Stream<List<Coordinate>> watchCoordinates() => select(coordinates).watch();

  Future insertCoordinate(Insertable<Coordinate> coordinate) =>
      into(coordinates).insert(coordinate);
}
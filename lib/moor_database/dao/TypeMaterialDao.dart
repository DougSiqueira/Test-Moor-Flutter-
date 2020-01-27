import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:test_moor_flutter/moor_database/moor_database.dart';

part 'TypeMaterialDao.g.dart';


@UseDao(tables: [TypeMaterials, ClassRCDs])
class TypeMaterialDao extends DatabaseAccessor<AppDatabase>
    with _$TypeMaterialDaoMixin {
  final AppDatabase db;

  TypeMaterialDao(this.db) : super(db);

  Stream<List<TypeMaterialWithClassRCD>> watchAllTypeMaterials() {
    final query = select(typeMaterials).join([
      leftOuterJoin(
          classRCDs, classRCDs.id.equalsExp(typeMaterials.id_classRCD))
    ]);

    return query.watch().map((rows) {
      return rows.map((row) {
        return TypeMaterialWithClassRCD(
          row.readTable(typeMaterials),
          row.readTable(classRCDs),
        );
      }).toList();
    });
  }

  Future insertTypeMaterial(Insertable<TypeMaterial> typeMaterial) =>
      into(typeMaterials).insert(typeMaterial);

  Future updateTypeMaterial(Insertable<TypeMaterial> typeMaterial) =>
      update(typeMaterials).replace(typeMaterial);

  Future deleteTypeMaterial(Insertable<TypeMaterial> typeMaterial) =>
      delete(typeMaterials).delete(typeMaterial);
}


class TypeMaterialWithClassRCD {
  TypeMaterialWithClassRCD(this.typeMaterial, this.classRCD);

  final TypeMaterial typeMaterial;
  final ClassRCD classRCD;
}
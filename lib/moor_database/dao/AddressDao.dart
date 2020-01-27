
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

import '../moor_database.dart';

part 'AddressDao.g.dart';

@UseDao(tables: [Addresss])
class AddressDao extends DatabaseAccessor<AppDatabase> with _$AddressDaoMixin {
  final AppDatabase db;

  AddressDao(this.db) : super(db);

  Future<List<Address>> getAllAddresss() => select(addresss).get();

  Stream<List<Address>> watchAllAddresss() {
    return (select(addresss)).watch();
  }

  Future insertAddress(Insertable<Address> address) =>
      into(addresss).insert(address);

  // Updates a Address with a matching primary key
  Future updateAddress(Insertable<Address> tasaddressk) =>
      update(addresss).replace(tasaddressk);

  Future deleteAddress(Insertable<Address> address) =>
      delete(addresss).delete(address);
}

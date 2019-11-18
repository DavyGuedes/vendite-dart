import 'package:vendite_dart/model/purchase.dart';
import 'package:vendite_dart/vendite_dart.dart';

class Item extends ManagedObject<_Item> implements _Item {}

class _Item {
  @primaryKey
  int id;

  String name;
  
  double price;

  @Relate(#items, onDelete: DeleteRule.nullify)
  ManagedSet<Purchase> purchases;
}
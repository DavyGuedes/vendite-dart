import 'package:vendite_dart/model/item.dart';
import 'package:vendite_dart/vendite_dart.dart';

class Purchase extends ManagedObject<_Purchase> implements _Purchase{}

class _Purchase {
  @primaryKey
  int id;

  String values;

  double discount;
  
  @Relate(#purchases, onDelete: DeleteRule.nullify)
  ManagedSet<Item> items;
}
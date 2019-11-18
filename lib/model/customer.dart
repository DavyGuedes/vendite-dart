import 'dart:math';

import 'package:vendite_dart/model/purchase.dart';
import 'package:vendite_dart/vendite_dart.dart';

class Customer extends ManagedObject<_Customer> implements _Customer {}

class _Customer {
  @primaryKey
  int id;

  String name;

  int rating;

  @Relate(#authors, onDelete: DeleteRule.restrict)
  ManagedSet<Purchase> purchases;

}


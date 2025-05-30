

import 'package:floor/floor.dart';
import 'package:shopping_cart_floordb/dao/dao.dart';

import '../entity/cart.dart';
import 'dart:async';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';


@Database(version: 1, entities: [Cart])
abstract class AppDatabase extends FloorDatabase{
  CartDao get cartDao;

}
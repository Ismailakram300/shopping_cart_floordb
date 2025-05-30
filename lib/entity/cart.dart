

import 'package:floor/floor.dart';

@entity
class Cart {
  @primaryKey
  final int? id;

  String? name;
  String? uid;
  String? category;
  String? imageUrl;
  String? oldPrice;
  String? price;

  Cart({this.uid, this.id, this.name, this.category, this.imageUrl, this.oldPrice,
    this.price});


}
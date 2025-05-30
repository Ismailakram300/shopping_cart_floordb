



import 'package:floor/floor.dart';
import 'package:shopping_cart_floordb/entity/cart.dart';

abstract class CartDao{
  
  @Query('SELECT * FROM CART WHERE uid:uid ')
  Stream<List<cart>> getAllItemCartByUid(String uid);

@Query('SELECT * FROM CART WHERE uid:uid AND id:id')
  Stream<List<cart>> getItemCartByUid(String uid,id);

@Query('DELETE FROM CART WHERE uid:uid')
  Stream<List<cart>> deleteItemCartByUid(String uid);


  
}




import 'package:floor/floor.dart';
import 'package:shopping_cart_floordb/entity/cart.dart';

abstract class CartDao{
  
  @Query('SELECT * FROM CART WHERE uid:uid ')
  Stream<List<Cart>> getAllItemCartByUid(String uid);

@Query('SELECT * FROM CART WHERE uid:uid AND id:id')
  Stream<List<Cart>> getItemCartByUid(String uid,id);

@Query('DELETE FROM CART WHERE uid:uid')
  Stream<List<Cart>> deleteItemCartByUid(String uid);
@insert
Future<void> insertCart(Cart  product);

@update
Future<void> updateCart(Cart  product);


@delete
Future<void> deleteCart(Cart  product);



  
}
import 'package:flutter/material.dart';
import 'package:shopping_cart_floordb/database/database.dart';
import 'package:shopping_cart_floordb/home_page.dart';
import 'package:shopping_cart_floordb/dao/dao.dart';

import 'dao/dao.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final database=await $FloorAppDatabase.databaseBuilder('edmt_cart_system.db').build();
 final dao=database.cartDao;
  runApp( MyApp(dao: dao,));
}

class MyApp extends StatelessWidget {
  final CartDao dao;
   MyApp({required this.dao});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  MyHomePage(dao:dao),
    );
  }
}

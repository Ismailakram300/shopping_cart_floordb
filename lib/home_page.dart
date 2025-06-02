import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_cart_floordb/dao/dao.dart';
import 'package:shopping_cart_floordb/model/Product.dart';
import 'package:flutter/services.dart' as rootBundle;

class MyHomePage extends StatefulWidget {
  final CartDao dao;
  const MyHomePage({required this.dao});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(appBar: AppBar(title: Text("HomePage")),

      body: FutureBuilder(
          future: readJsonDatabase(),
        builder: (context, snapshot){
if(snapsh        }),


      ),

    );
  }
  Future<List<Product>> readJsonDatabase() async{
    final raw_bundle =await rootBundle.rootBundle.loadString('assets/data/my_product_json.json');
    final list = json.decode(raw_bundle) as List<dynamic>;
    return list.map((model)=> Product.fromJson(model)).toList();
  }
}

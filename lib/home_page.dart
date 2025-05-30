import 'package:flutter/material.dart';
import 'package:shopping_cart_floordb/dao/dao.dart';

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
      home: Scaffold(appBar: AppBar(title: Text("HomePage"))
      
      body: FutureBuilder(future: readJSONDatabase(), builder: builder),
      
      
      ),
    
    );
  }
}

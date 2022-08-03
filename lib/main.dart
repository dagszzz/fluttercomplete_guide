import 'package:flutter/material.dart';
import 'package:fluttercomplete_guide/views/home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key:key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      );
    throw UnimplementedError();
  }
}
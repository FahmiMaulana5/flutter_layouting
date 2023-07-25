import 'package:flutter/material.dart';
import 'package:latihan/convert_design/first.dart';
import 'package:latihan/convert_design/second.dart';
import 'package:latihan/layouting/latihan1.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        hintColor: Color.fromARGB(70, 0, 0, 0),
      ),
      title: "Belajar flutter",
      routes: {
        '/LatihanLayouting':(context) => LatihanLayouting(),
        '/First':(context) => First(),
        '/Second':(context)=> Second()
      },
      initialRoute: '/First',
    );
  }
}
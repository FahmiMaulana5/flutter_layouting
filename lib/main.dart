import 'package:flutter/material.dart';
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
      title: "Belajar flutter",
      routes: {
        '/LatihanLayouting':(context) => LatihanLayouting()
      },
      initialRoute: '/LatihanLayouting',
    );
  }
}
import 'package:flutter/material.dart';
import './homePage_01.dart';
import './testPage_02.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        "./": (context) => const MyHomePage(title: "Flutter Demo Home Page"),
        "./test": (context) => TestActivity(),
      },
    );
  }
}

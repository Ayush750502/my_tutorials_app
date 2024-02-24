import 'package:flutter/material.dart';
import './login_form_page_03.dart';
import 'home_page_01.dart';
import 'test_page_02.dart';

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
      initialRoute: './home',
      routes: {
        "./home": (context) =>
            const MyHomePage(title: "Flutter Demo Home Page"),
        "./test": (context) => const TestActivity(),
        "./login": (context) => const loginFormPage()
      },
    );
  }
}

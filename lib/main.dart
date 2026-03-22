import 'package:flutter/material.dart';
import 'screns/products_screns.dart';
import 'constents.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nou96a', 
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: kPrimaryColor,
        ),
      ),
      home:HomeScren());
  }
}

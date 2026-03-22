import 'package:flutter/material.dart';
import 'package:marsa/constents.dart';
import 'package:marsa/widgets/home_body.dart';
class HomeScren extends StatelessWidget {
  const HomeScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title:Text(
            "Nou96a",
            style: TextStyle(color: kBackgroundColor),
          ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){},
            color: Colors.white,
          )
        ],
      ),
      body: HomeBody(),
    );
  }
}
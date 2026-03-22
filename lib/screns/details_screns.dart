// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:marsa/constents.dart';
import 'package:marsa/models/product.dart';
import 'package:marsa/widgets/details/details_body.dart';

class DetailsScren extends StatelessWidget {
  const DetailsScren({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: kPrimaryColor),
        ),
      ),
      body: DetailsBody(
        product:product,
      ),
    );
  }
}

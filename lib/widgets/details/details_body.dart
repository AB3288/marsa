// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:marsa/constents.dart';
import 'package:marsa/models/product.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            children: [
              ProductImage(size: size, image: product.image),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(colorm: kTextLightColor, isSelect: true),
                    ColorDot(colorm: Colors.blue, isSelect: false),
                    ColorDot(colorm: Colors.yellow, isSelect: false),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding / 2,
                ),
                child: Text(
                  "Airpod",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              Text(
                "${product.price}\$",
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                  color: kSecondaryColor,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 1.5,
            vertical: kDefaultPadding / 2,
          ),
          child: Text(
            product.description,
            style: TextStyle(color: kBackgroundColor, fontSize: 19.0),
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({super.key, required this.colorm, this.isSelect = false});
  final Color colorm;
  final bool isSelect;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelect == true ? colorm : Colors.transparent,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: colorm),
      ),
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.size, required this.image});
  final String image;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 15),
                  blurRadius: 25,
                  color: Colors.black12,
                ),
              ],
            ),
          ),
          Image.asset(
            image,
            height: size.width * 0.7,
            width: size.width * 0.7,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:marsa/constents.dart';
import 'package:marsa/models/product.dart';
import 'package:marsa/screns/details_screns.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70.0),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    Product product = products[index];
                    return Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                        vertical: kDefaultPadding / 2,
                      ),
                      height: 190.0,
                      child: GestureDetector(
                        onTap: () {
                          product.press();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScren(
                                product: products[index],
                              ),
                            ),
                          );
                        },
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              height: 160.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(22),
                                ),
                                color: kBackgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, 15),
                                    blurRadius: 25,
                                    color: Colors.black12,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 0.0,
                              left: 0.0,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: kDefaultFontSize,
                                ),
                                height: 160.0,
                                child: Image.asset(
                                  product.image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0.0,
                              right: 0.0,
                              child: SizedBox(
                                height: 136.0,
                                width: size.width - 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: kDefaultFontSize,
                                      ),
                                      child: Text(
                                        product.title,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodyLarge,
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: kDefaultFontSize,
                                      ),
                                      child: Text(
                                        product.subTitle,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodySmall,
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: EdgeInsets.all(kDefaultPadding),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: kDefaultPadding * 1.5,
                                          vertical: kDefaultPadding / 5,
                                        ),
                                        decoration: BoxDecoration(
                                          color: kSecondaryColor,
                                          borderRadius: BorderRadius.circular(
                                            22,
                                          ),
                                        ),
                                        child: Text("${product.price}\$"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

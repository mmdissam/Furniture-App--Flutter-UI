import 'package:flutter/material.dart';
import 'package:furnitureflutter/constants.dart';
import 'package:furnitureflutter/models/product.dart';
import 'package:furnitureflutter/screens/details/details_screen.dart';

import 'product_card.dart';

class ListProductCardAndBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: <Widget>[
          _backGroundColor(context),
          ListView.builder(
            itemCount: products.length + 1,
            itemBuilder: (context, index) => index != products.length
                ? ProductCard(
                    product: products[index],
                    itemIndex: index,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: products[index],
                          ),
                        ),
                      );
                    },
                  )
                : SizedBox(
                    height: kDefaultPadding,
                  ),
          ),
        ],
      ),
    );
  }

  Widget _backGroundColor(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 70),
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      ),
    );
  }
}

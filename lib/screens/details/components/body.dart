import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furnitureflutter/constants.dart';
import 'package:furnitureflutter/models/product.dart';

import 'chat_and_add_to_cart.dart';
import 'content_datails.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It provide total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            // We don't give it the height, because the child expend the widget
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child:
                ContentDetails(context: context, size: size, product: product),
          ),
          ChatAndAddToCart(),
        ],
      ),
    );
  }
}

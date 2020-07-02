import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furnitureflutter/constants.dart';
import 'package:furnitureflutter/models/product.dart';
import 'package:furnitureflutter/screens/product/components/list_product_card_and_background.dart';
import 'package:furnitureflutter/screens/product/components/search_box.dart';

import 'category_list.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(onChange: (value) {}),
          CategoryList(),
          SizedBox(height: kDefaultPadding / 2),
          ListProductCardAndBackground(),
        ],
      ),
    );
  }
}

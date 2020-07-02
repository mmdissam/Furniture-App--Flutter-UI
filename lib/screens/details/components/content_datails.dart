import 'package:flutter/material.dart';
import 'package:furnitureflutter/constants.dart';
import 'package:furnitureflutter/models/product.dart';

import 'list_product_colors.dart';
import 'product_image.dart';

class ContentDetails extends StatelessWidget {
  final Size size;
  final BuildContext context;
  final Product product;

  const ContentDetails({Key key, this.size, this.context, this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _productImage(context),
        ListProductColors(),
        _productTitle(context),
        _productPrice(context),
        _productDescription(context),
        SizedBox(height: kDefaultPadding),
      ],
    );
  }

  Widget _productImage(BuildContext context) {
    return Center(
      child: Hero(
        tag: product.id,
        child: ProductPoster(
          size: size,
          image: product.image,
        ),
      ),
    );
  }

  Widget _productTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: Text(
        product.title,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }

  Widget _productPrice(BuildContext context) {
    return Text(
      '\$${product.price}',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: kPrimaryColor,
      ),
    );
  }

  Widget _productDescription(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: Text(
        product.description,
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:furnitureflutter/constants.dart';
import 'package:furnitureflutter/models/product.dart';

class ProductCard extends StatelessWidget {
  final int itemIndex;
  final Product product;
  final Function press;

  const ProductCard({Key key, this.itemIndex, this.product, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 160,
//      color: Colors.blueAccent,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            _firstBackground(context),
            _secondBackground(context),
            _productImage(context),
            _contentProduct(context, size),
          ],
        ),
      ),
    );
  }

  Widget _firstBackground(BuildContext context) {
    return Container(
      height: 136,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: itemIndex.isEven ? kBlueColor : kSecondaryColor,
          boxShadow: [kDefaultShadow]),
    );
  }

  Widget _secondBackground(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: kDefaultPadding / 2),
      height: 136,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.white,
      ),
    );
  }

  Widget _productImage(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Hero(
        tag: product.id,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          height: 160,
          // image is square but we add extra 20 + 20 padding that's why width is 200
          width: 200,
          child: Image.asset(
            product.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _contentProduct(BuildContext context, Size size) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        height: 136,
        width: size.width - 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(),
            _titleProduct(context),
            Spacer(),
            _priceProduct(context),
          ],
        ),
      ),
    );
  }

  Widget _titleProduct(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        products[itemIndex].title,
        style: Theme.of(context).textTheme.button,
      ),
    );
  }

  Widget _priceProduct(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 1.5, // 30 padding
        vertical: kDefaultPadding / 4, // 5 padding
      ),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(22),
          topRight: Radius.circular(22),
        ),
      ),
      child: Text(
        '\$${product.price}',
        style: Theme.of(context).textTheme.button,
      ),
    );
  }
}

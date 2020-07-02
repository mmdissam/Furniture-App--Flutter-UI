import 'package:flutter/material.dart';
import 'package:furnitureflutter/constants.dart';

class ProductPoster extends StatelessWidget {
  final Size size;
  final String image;

  const ProductPoster({Key key, this.size, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      // The height of this container is 80% of our width
      height: size.width * 0.8,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          _circleBackground(context, size),
          _productImage(context, size),
        ],
      ),
    );
  }

  Widget _circleBackground(BuildContext context, Size size) {
    return Container(
      height: size.width * 0.7,
      width: size.width * 0.7,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _productImage(BuildContext context, Size size) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
      height: size.width * 0.75,
      width: size.width * 0.75,
    );
  }
}

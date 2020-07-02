import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furnitureflutter/constants.dart';
import 'package:furnitureflutter/models/product.dart';
import 'package:furnitureflutter/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: _appBar(context),
      body: Body(product: product),
    );
  }

  Widget _appBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kBackgroundColor,
      leading: _backIcon(context),
      title: _backTitle(context),
      centerTitle: false,
      actions: <Widget>[
        _actionCartWithItem(context),
      ],
    );
  }

  Widget _backIcon(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.only(left: kDefaultPadding),
      icon: SvgPicture.asset('assets/icons/back.svg'),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  Widget _backTitle(BuildContext context) {
    return Text(
      'BACK',
      style: Theme.of(context).textTheme.bodyText2,
    );
  }

  Widget _actionCartWithItem(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.only(right: kDefaultPadding),
      icon: SvgPicture.asset('assets/icons/cart_with_item.svg'),
      onPressed: () {},
    );
  }
}

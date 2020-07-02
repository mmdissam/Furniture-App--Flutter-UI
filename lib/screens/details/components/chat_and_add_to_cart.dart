import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furnitureflutter/constants.dart';

class ChatAndAddToCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding / 4,
        horizontal: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Color(0XFFFCBF1E),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
        child: _rowOfChatAndAddToCart(context),
      ),
    );
  }

  Widget _rowOfChatAndAddToCart(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _chatIcon(context),
        SizedBox(width: kDefaultPadding / 2),
        _chatTitle(context),
        Spacer(),
        _addItemICon(context),
      ],
    );
  }

  Widget _chatIcon(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/chat.svg',
      height: 18,
    );
  }

  Widget _chatTitle(BuildContext context) {
    return Text('Chat', style: TextStyle(color: Colors.white));
  }

  Widget _addItemICon(BuildContext context) {
    return FlatButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset('assets/icons/shopping-bag.svg', height: 18),
      label: Text(
        'Add to cart',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

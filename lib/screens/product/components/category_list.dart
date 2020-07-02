import 'package:flutter/material.dart';
import 'package:furnitureflutter/constants.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int _selectIndex = 0;
  List _categories = ['All', 'Sofa', 'Park bench', 'Armchair'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding / 2, left: kDefaultPadding),
      height: 30,
      child: ListView.builder(
        itemCount: _categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              _selectIndex = index;
            });
          },
          child: _contentCategory(context, index),
        ),
      ),
    );
  }

  Widget _contentCategory(BuildContext context, int index) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        // At end item it add extra 20 right  padding
        right: index == _categories.length - 1 ? kDefaultPadding : 0,
      ),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      decoration: BoxDecoration(
        color: _selectIndex == index
            ? Colors.white.withOpacity(0.4)
            : Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Text(
        '${_categories[index]}',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

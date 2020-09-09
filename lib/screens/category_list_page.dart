// Screen that will display a list of all available categories of products

import 'package:flutter/material.dart';
import 'package:skincare_app/components/selection_list_card.dart';

class CategoryListPage extends StatefulWidget {
  @override
  _CategoryListPageState createState() => _CategoryListPageState();
}

class _CategoryListPageState extends State<CategoryListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skincare App'),
      ),
      body: ListView(
        children: <Widget>[
          SelectionListCard(colour: Colors.orange, displayText: "Category 0"),
          SelectionListCard(colour: Colors.blue, displayText: "Category 1"),
          SelectionListCard(colour: Colors.red, displayText: "Category 2"),
          SelectionListCard(colour: Colors.green, displayText: "Category 3"),
          SelectionListCard(colour: Colors.purple, displayText: "Category 4"),
          SelectionListCard(colour: Colors.yellow, displayText: "Category 5"),
        ],
      ),
    );
  }
}

// Screen that will display a list of all available categories of products

import 'package:flutter/material.dart';
import 'package:skincare_app/components/selection_list_card.dart';
import 'package:skincare_app/category.dart';

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
      body: new ListView.builder(
        itemCount: CategoryHandler().getCategoryListLength(),
        itemBuilder: (BuildContext ctxt, int index) {
          return new SelectionListCard(
            colour: CategoryHandler().getCategoryColour(index),
            displayText: CategoryHandler().getCategoryName(index),
          );
        },
      ),
    );
  }
}

// Screen that will display a list of all available categories of products

import 'package:flutter/material.dart';
import 'package:skincare_app/components/selection_list_card.dart';
import 'package:skincare_app/category.dart';
import 'package:skincare_app/screens/product_list_page.dart';

class CategoryListPage extends StatefulWidget {
  @override
  _CategoryListPageState createState() => _CategoryListPageState();
}

class _CategoryListPageState extends State<CategoryListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE1BEE7),
        title: Center(child: Text('Skincare App')),
      ),
      body: new ListView.builder(
        itemCount: CategoryHandler().getCategoryListLength(),
        itemBuilder: (BuildContext ctxt, int index) {
          return new SelectionListCard(
            colour: CategoryHandler().getCategoryColour(index),
            displayText: CategoryHandler().getCategoryName(index),
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ProductListPage(
                      chosenCategory: CategoryHandler().getCategoryName(index),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// Screen that will display a list of all available products of chosen category

import 'package:flutter/material.dart';
import 'package:skincare_app/components/selection_list_card.dart';

class ProductListPage extends StatefulWidget {
  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
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
              setState(() {
                print(CategoryHandler().getCategoryName(index));
              });
            },
          );
        },
      ),
    );
  }
}

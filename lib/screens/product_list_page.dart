// Screen that will display a list of all available products of chosen category

import 'package:flutter/material.dart';
import 'package:skincare_app/components/selection_list_card.dart';
import 'package:skincare_app/product.dart';

class ProductListPage extends StatefulWidget {
  ProductListPage({@required this.chosenCategory});

  final String chosenCategory;

  @override
  _ProductListPageState createState() =>
      _ProductListPageState(chosenCategory: chosenCategory);
}

class _ProductListPageState extends State<ProductListPage> {
  _ProductListPageState({@required this.chosenCategory});

  final String chosenCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE1BEE7),
        title: Center(child: Text(chosenCategory)),
      ),
      body: ListView.builder(
        itemCount: ProductHandler().getProductListLength(),
        itemBuilder: (BuildContext ctxt, int index) {
          return new SelectionListCard(
            colour: ProductHandler().getProductColour(index),
            displayText: ProductHandler().getProductName(index),
            onPress: () {
              setState(() {
                print(ProductHandler().getProductName(index));
              });
            },
          );
        },
      ),
    );
  }
}

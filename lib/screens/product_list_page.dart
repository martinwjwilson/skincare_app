// Screen that will display a list of all available products of chosen category

import 'package:flutter/material.dart';
import 'package:skincare_app/components/selection_list_card.dart';
import 'package:skincare_app/product.dart';
import 'package:skincare_app/screens/chosen_product_page.dart';

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
    print("The chosen category is: " + chosenCategory);
    // get a list of products to display based on the chosen category
    List<Product> productList =
        ProductHandler().getProductsMatchingChosenCategory(chosenCategory);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE1BEE7),
        title: Center(child: Text(chosenCategory)),
      ),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return new SelectionListCard(
            colour: productList[index].productColour,
            displayText: productList[index].productName,
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ChosenProjectPage(
                      chosenProduct: productList[index].productName,
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

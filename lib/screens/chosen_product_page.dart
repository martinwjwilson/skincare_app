// Screen that will display everything about the product chosen from the product list

import 'package:flutter/material.dart';
import 'package:skincare_app/product.dart';

class ChosenProjectPage extends StatefulWidget {
  ChosenProjectPage({@required this.chosenProduct});

  final String chosenProduct;

  @override
  _ChosenProjectPageState createState() =>
      _ChosenProjectPageState(chosenProduct: chosenProduct);
}

class _ChosenProjectPageState extends State<ChosenProjectPage> {
  _ChosenProjectPageState({@required this.chosenProduct});

  final String chosenProduct;

  @override
  Widget build(BuildContext context) {
    // Get an instance of the chosenProduct
    Product product = ProductHandler().getProductByName(chosenProduct);

    List<Widget> layoutWidgets = <Widget>[
      Container(
        color: Colors.blue,
        height: 250,
        margin: EdgeInsets.all(10),
      ),
      Container(
        padding: EdgeInsets.only(top: 10),
        color: Colors.greenAccent,
        child: Column(
          children: <Widget>[
            Text("Description"),
            Container(
              color: Colors.blue,
              height: 150,
              margin: EdgeInsets.all(10),
              child: Text(product.productDescription),
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 10),
        color: Colors.greenAccent,
        child: Column(
          children: <Widget>[
            Text("Reviews"),
            Container(
              color: Colors.blue,
              height: 150,
              margin: EdgeInsets.all(10),
            ),
          ],
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE1BEE7),
        title: Center(child: Text(product.productName)),
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: 3,
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemBuilder: (BuildContext context, int index) {
            return layoutWidgets[index];
          },
        ),
      ),
    );
  }
}

// Handles requests to the list of products

import 'package:flutter/material.dart';

class Product {
  Product(
      {@required this.productName,
      @required this.categoryName,
      @required this.productColour});

  String productName;
  String categoryName;
  Color productColour;
  // Image productSplashImage;
}

class ProductHandler {
  String getProductName(i) {
    return _productList[i].productName;
  }

  String getProductCategory(i) {
    return _productList[i].categoryName;
  }

  Color getProductColour(i) {
    return _productList[i].productColour;
  }

  int getProductListLength() {
    return _productList.length;
  }

  List<Product> _productList = [
    Product(
        productName: 'Product 1',
        categoryName: 'Category 1',
        productColour: Color(0xFFFFFFCC)),
    Product(
        productName: 'Product 2',
        categoryName: 'Category 1',
        productColour: Color(0xFFFFEECC)),
    Product(
      productName: 'Product 3',
      categoryName: 'Category 2',
      productColour: Color(0xFFFFDDCC),
    ),
    Product(
        productName: 'Product 4',
        categoryName: 'Category 2',
        productColour: Color(0xFFFFCCCC)),
    Product(
        productName: 'Product 5',
        categoryName: 'Category 3',
        productColour: Color(0xFFFFBBCC)),
    Product(
        productName: 'Product 6',
        categoryName: 'Category 4',
        productColour: Color(0xFFFFAACC))
  ];
}

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
    return "null";
  }
}

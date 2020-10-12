// Handles requests to the list of products

import 'package:flutter/material.dart';

class Product {
  Product(
      {@required this.productName,
      @required this.categoryName,
      this.productDescription,
      @required this.productColour});

  String productName;
  String categoryName;
  String productDescription;
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

  Product getProductByName(givenProductName) {
    String productName;
    String categoryName;
    String productDescription;
    Color productColour;

    // Loop through all products and retrieve the one matching the given name
    for (Product product in _productList) {
      if (product.productName == givenProductName) {
        productName = product.productName;
        categoryName = product.categoryName;
        productDescription = product.productDescription;
        productColour = product.productColour;
      }
    }

    return Product(
        productName: productName,
        categoryName: categoryName,
        productDescription: productDescription,
        productColour: productColour);
  }

  List<Product> getProductsMatchingChosenCategory(chosenCategory) {
    List<Product> returnList = [];
    for (Product product in _productList) {
      if (product.categoryName == chosenCategory) {
        returnList.add(product);
      }
    }
    return (returnList);
  }

  List<Product> _productList = [
    Product(
        productName: 'Product 1',
        categoryName: 'Category 1',
        productDescription: 'Description of product 1 goes in here',
        productColour: Color(0xFFFFFFCC)),
    Product(
        productName: 'Product 2',
        categoryName: 'Category 1',
        productDescription: 'Description of product 2 goes in here',
        productColour: Color(0xFFFFEECC)),
    Product(
        productName: 'Product 3',
        categoryName: 'Category 2',
        productDescription: 'Description of product 3 goes in here',
        productColour: Color(0xFFFFDDCC)),
    Product(
        productName: 'Product 4',
        categoryName: 'Category 2',
        productDescription: 'Description of product 4 goes in here',
        productColour: Color(0xFFFFCCCC)),
    Product(
        productName: 'Product 5',
        categoryName: 'Category 3',
        productDescription: 'Description of product 5 goes in here',
        productColour: Color(0xFFFFBBCC)),
    Product(
        productName: 'Product 6',
        categoryName: 'Category 4',
        productDescription: 'Description of product 6 goes in here',
        productColour: Color(0xFFFFAACC))
  ];
}

// Holds all of the categories and handles any requests to the data

import 'package:flutter/material.dart';

class Category {
  Category({@required this.categoryName, @required this.categoryColour});

  String categoryName;
  Color categoryColour;
  // Image categorySplashImage;
}

class CategoryHandler {
  List<Category> _categoryList = [
    Category(categoryName: 'Brand 1', categoryColour: Color(0xFFFFFFCC)),
    Category(categoryName: 'Brand 2', categoryColour: Color(0xFFFFEECC)),
    Category(categoryName: 'Brand 3', categoryColour: Color(0xFFFFDDCC)),
    Category(categoryName: 'Brand 4', categoryColour: Color(0xFFFFCCCC)),
    Category(categoryName: 'Brand 5', categoryColour: Color(0xFFFFBBCC)),
    Category(categoryName: 'Brand 6', categoryColour: Color(0xFFFFAACC)),
    Category(categoryName: 'Brand 7', categoryColour: Color(0xFFFFFFCC)),
    Category(categoryName: 'Brand 8', categoryColour: Color(0xFFFFEECC)),
    Category(categoryName: 'Brand 9', categoryColour: Color(0xFFFFDDCC)),
    Category(categoryName: 'Brand 10', categoryColour: Color(0xFFFFCCCC)),
    Category(categoryName: 'Brand 11', categoryColour: Color(0xFFFFBBCC)),
    Category(categoryName: 'Brand 12', categoryColour: Color(0xFFFFAACC))
  ];

  String getCategoryName(i) {
    return _categoryList[i].categoryName;
  }

  Color getCategoryColour(i) {
    return _categoryList[i].categoryColour;
  }

  int getCategoryListLength() {
    return _categoryList.length;
  }
}

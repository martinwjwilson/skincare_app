// Holds all of the categories and handles any requests to the data

import 'package:flutter/material.dart';

class Category {
  Category({@required this.categoryName, @required this.categoryColour});

  String categoryName;
  Color categoryColour;
// Image categoryImage;
}

class CategoryHandler {
  List<Category> _categoryList = [
    Category(categoryName: 'Category 1', categoryColour: Color(0xFFFFFFCC)),
    Category(categoryName: 'Category 2', categoryColour: Color(0xFFFFEECC)),
    Category(categoryName: 'Category 3', categoryColour: Color(0xFFFFDDCC)),
    Category(categoryName: 'Category 4', categoryColour: Color(0xFFFFCCCC)),
    Category(categoryName: 'Category 5', categoryColour: Color(0xFFFFBBCC)),
    Category(categoryName: 'Category 6', categoryColour: Color(0xFFFFAACC))
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

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
    Category(categoryName: 'Cleanser', categoryColour: Color(0xFFFFFFCC)),
    Category(categoryName: 'Eye Care', categoryColour: Color(0xFFFFEECC)),
    Category(categoryName: 'Face Mask', categoryColour: Color(0xFFFFDDCC)),
    Category(categoryName: 'Facial Oil', categoryColour: Color(0xFFFFCCCC)),
    Category(categoryName: 'Moisturiser', categoryColour: Color(0xFFFFBBCC)),
    Category(categoryName: 'Toner', categoryColour: Color(0xFFFFAACC))
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

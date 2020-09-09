import 'package:flutter/material.dart';
import 'category.dart';

class CategoryHandler {
  List<Category> _categoryList = [
    Category(categoryName: 'Category 1', categoryColour: Colors.orange),
    Category(categoryName: 'Category 2', categoryColour: Colors.blue),
    Category(categoryName: 'Category 3', categoryColour: Colors.red),
    Category(categoryName: 'Category 4', categoryColour: Colors.green),
    Category(categoryName: 'Category 5', categoryColour: Colors.purple),
    Category(categoryName: 'Category 6', categoryColour: Colors.yellow)
  ];

  String getCategoryName(i) {
    return _categoryList[i].categoryName;
  }

  MaterialColor getCategoryColour(i) {
    return _categoryList[i].categoryColour;
  }

  int getCategoryListLength() {
    return _categoryList.length;
  }
}

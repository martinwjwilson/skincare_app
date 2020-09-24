import 'package:flutter/material.dart';
import 'package:skincare_app/screens/product_list_page.dart';
import 'package:skincare_app/screens/category_list_page.dart';
import 'package:skincare_app/screens/chosen_product_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CategoryListPage(),
    );
  }
}

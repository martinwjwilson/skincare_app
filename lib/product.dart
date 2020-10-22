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
        productName: 'Angels On Bare Skin',
        categoryName: 'Cleanser',
        productDescription:
            'Lush - 100% natural, this gentle cleanser contains exfoliating ground almonds and calming lavender oil to balance and soothe while effectively cleaning the skin.',
        productColour: Color(0xFFFFFFCC)),
    Product(
        productName: 'Bûche de Noël',
        categoryName: 'Cleanser',
        productDescription:
            'Lush - A Christmas treat for face and body. With creamy Fair Trade organic cocoa butter, almonds and mandarins this will brighten and hydrate skin.',
        productColour: Color(0xFFFFEECC)),
    Product(
        productName: 'Green People - GENTLE CLEANSE & MAKE-UP REMOVER',
        categoryName: 'Cleanser',
        productDescription:
            'Purifying organic cleanser and make-up remover for all skin types',
        productColour: Color(0xFFFFDDCC)),
    Product(
        productName: 'Green People - AGE DEFY+ PURIFY & HYDRATE CREAM CLEANSER',
        categoryName: 'Cleanser',
        productDescription:
            'Revive and refresh the complexion with this hydrating cream cleanser, developed to glide over the skin to gently yet effectively remove light make-up and impurities.',
        productColour: Color(0xFFFFCCCC)),
    Product(
        productName: 'Lush - Tea Tree',
        categoryName: 'Toner',
        productDescription:
            'If your skin could use a little extra TLC, try this powerful yet gentle treatment of tea tree oil and aloe vera. Tea tree is known for its antibacterial and antiseptic properties, and helps to combat the bacteria that causes spots. Aloe vera is kind, cooling and wonderfully gentle on the skin. Drop into a bowl of hot water, releasing the steam to open pores and allow the essential oils to be absorbed.',
        productColour: Color(0xFFFFBBCC)),
    Product(
        productName: 'Breath of Fresh Air',
        categoryName: 'Toner',
        productDescription:
            'This is the most refreshing of all our toner waters, with mineral-rich carrageenan seaweed extract and rose absolute to tone and balance the skin. This is perfect to use as a spritz in the summer to cool down, or any time of year when you want to feel refreshed. Rose absolute will help to reduce redness whilst patchouli oil is cooling and astringent on the skin.',
        productColour: Color(0xFFFFAACC)),
    Product(
        productName: 'Facetheory - CERA-C PORE REDUCING TONER T1',
        categoryName: 'Toner',
        productDescription:
            'A lightweight toner formulated with ceramides and 5% niacinamide (vitamin B3) to balance oil, promote elasticity, and minimise pore size.',
        productColour: Color(0xFFFFAACC))
  ];
}

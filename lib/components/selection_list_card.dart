import 'package:flutter/material.dart';

class SelectionListCard extends StatelessWidget {
  SelectionListCard(
      {@required this.colour, @required this.displayText, this.onPress});

  final Color colour;
  final String displayText;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Text(displayText),
        margin: EdgeInsets.all(5),
        height: 150,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

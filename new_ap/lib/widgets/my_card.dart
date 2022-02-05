import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.blue,
        elevation: 6.0,
        child: Container(
          height: 150,
          child: Image.asset(
            "assets/img/pexels-arindam-raha-2213575.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

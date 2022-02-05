import 'package:flutter/material.dart';
import 'package:new_ap/widgets/my_card.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return MyCard();
        });
  }
}

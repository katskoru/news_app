import 'package:flutter/material.dart';
import 'package:new_ap/screens/home/feedPage/feed_page.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 44.0),
        title: Center(
          child: Text(
            "News feed",
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: FeedPage(),
    );
  }
}

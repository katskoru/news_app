import 'package:flutter/material.dart';
import 'package:new_ap/widgets/packman.dart';

class NewsPage extends StatefulWidget {
  NewsPage({Key? key, required this.title, required this.url})
      : super(key: key);

  final String title;
  final String url;
  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  bool isFavourite = false;
  var date = DateTime.now().year.toString() +
      "/" +
      DateTime.now().month.toString() +
      "/" +
      DateTime.now().day.toString();
  String bodyText = ''' 
    Eos no scripta suscipit concludaturque. Tale delenit pri eu, sit probatus accommodare no, dissentiet delicatissimi vis et. Ad est vivendo fabellas, no diam elaboraret neglegentur per. Graecis atomorum ut duo, possim verterem et mea. Duo et facilisis salutatus, ei suas praesent imperdiet qui.

Ad eam libris tibique, alii homero audire sea te. Cu ius consequat constituto reprehendunt. An vix rebum doming euismod. Pri cu tollit efficiantur, et usu stet facilisis, ei cum regione noluisse. Eu cum minimum urbanitas temporibus, ne vel exerci doming equidem.''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 7.0,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isFavourite = !isFavourite;
              });
            },
            icon: Icon(
              isFavourite ? Icons.favorite : Icons.favorite_border,
            ),
            iconSize: 40.0,
            color: Colors.white,
          )
        ],
        backgroundColor: Colors.brown[900],
        title: Text(
          widget.title,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              height: 200,
              color: Colors.green,
              child: Image.network(
                widget.url,
                fit: BoxFit.cover,
              ),
            ),
            Packman(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(widget.title), Text(date)],
            ),
            Packman(),
            Container(
              child: Text(bodyText),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/model/list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'स्व-स्वास्थ्य',
          style: TextStyle(
            fontFamily: 'PoppinsBlack',
          ),
        ),
        backgroundColor: Colors.blue[800],
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              })
        ],
      ),
    );
  }
}

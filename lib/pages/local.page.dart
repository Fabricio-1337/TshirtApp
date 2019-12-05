import 'package:flutter/material.dart';

class LocalPage extends StatefulWidget {
  @override
  _LocalPageState createState() => _LocalPageState();
}

class _LocalPageState extends State<LocalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Local"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 10,
          left: 40,
          right: 40,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
                SizedBox(
                  height: 70,
                ),
                Container(
                  width: 200,
                  height: 80,
                  color: Colors.orange,
                ),
                SizedBox(
                height: 70,
                ),
                Container(
                  width: 200,
                  height: 80,
                  color: Colors.orange,
                ),
                  
          ],
        ),
      ),
    );
  }
}
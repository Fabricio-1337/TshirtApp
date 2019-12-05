import 'package:flutter/material.dart';

class CredPage extends StatefulWidget {
  @override
  _CredPageState createState() => _CredPageState();
}

class _CredPageState extends State<CredPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Cartão"),
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
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 19,
              style: TextStyle(
              ),
              decoration: InputDecoration(
                  labelText: "Numero do cartão",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  border: OutlineInputBorder()),
            ),
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 5,
              style: TextStyle(
              ),
              decoration: InputDecoration(
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  labelText: "MM/YY",
                  border: OutlineInputBorder()),
            ),
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 3,
              style: TextStyle(
              ),
              decoration: InputDecoration(
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  labelText: "CVV",
                  border: OutlineInputBorder()),
            ),
            TextField(
              keyboardType: TextInputType.text,
              maxLength: 20,
              style: TextStyle(
              ),
              decoration: InputDecoration(
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  labelText: "Nome do Cartão",
                  border: OutlineInputBorder()),
            ),
             SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 60,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.3, 1],
                        colors: [
                          Color(0xFFF58524),
                          Color(0XFFF92B7F),
                        ],             
                      ),
                      borderRadius: BorderRadius.all(
                      Radius.circular(5),
                      ),
                    ),
                    child: FlatButton(
                        child: Text(
                          "Finalizar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {},
                    ),
                  ),
          ],
        ),
      ),
      );
}
}
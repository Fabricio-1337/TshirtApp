import 'package:flutter/material.dart';
import 'package:todo/pages/cred.page.dart';

class CarPage extends StatefulWidget {
  @override
  _CarPageState createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Carrinho"),
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
                  child: TextField(
                      keyboardType: TextInputType.number,
                      maxLength: 2,
                      style: TextStyle(
                      ),
                      decoration: InputDecoration(
                          labelText: "Quantidade",
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          border: OutlineInputBorder()),
                    ),
                ),
                  Container(
                      child: TextField(
                      keyboardType: TextInputType.text,
                      maxLength: 1,
                      style: TextStyle(
                      ),
                      decoration: InputDecoration(
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          labelText: "Tamanho",
                          border: OutlineInputBorder()),
                    ),
                  ),
                  Container(
                      child: TextField(
                      keyboardType: TextInputType.text,
                      maxLength: 10,
                      style: TextStyle(
                      ),
                      decoration: InputDecoration(
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          labelText: "Cor",
                          border: OutlineInputBorder()),
                    ),
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
                          "Comprar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CredPage(),));
                        },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
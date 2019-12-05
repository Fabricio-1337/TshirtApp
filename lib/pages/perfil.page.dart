import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
     body: Container(
         padding: EdgeInsets.only(
          top: 10,
          left: 40,
          right: 40,
        ),
        color: Colors.grey,
        child: ListView(
          children: <Widget>[
            Container(
              width: 5,
              height: 150,
              alignment: Alignment(0.0, 1.15),
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0] ,
                  colors: [
                   Color(0xFFF58524),
                   Color(0XFFF92B7F),
                  ],
                ),
                border: Border.all(
                  width: 5.0,
                  color: const Color(0XFFFFFFFF),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(90),
                ),
              ),
              child: Container(
                height: 56,
                width: 56,
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end:Alignment.bottomRight,
                    stops:[0.3, 1.0],
                     colors: [
                       Color(0xFFFFFFFF),
                       Color(0xFFFFFFFF),
                     ],
                  ),
                   border: Border.all(
                   width: 4.0,
                   color: const Color(0XFFFFFFFF),
                   ),
                   borderRadius: BorderRadius.all(
                   Radius.circular(56),
                   ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child:Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Idade",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Time de coração",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "Numero de Telefone",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 40,
                width: 40,
                alignment: Alignment.centerLeft,
                  child: Text(
                  "Distancia Maxima",
                  style: TextStyle(
                    fontSize: 17,
                    ),
                  ),
              ),
          ],
        ),
     ),
    );
  }
}
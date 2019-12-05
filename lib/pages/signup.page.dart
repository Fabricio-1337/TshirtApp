
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}
final formKey = GlobalKey<FormState>();
String _email, _password, _nome;

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar-se"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 10,
          left: 40,
          right: 40,
        ),
        color: Colors.grey,
        child: Form(
          key: formKey,
        child: ListView(
          children: <Widget>[
            Container(
              width: 300,
              height: 300,
              alignment: Alignment.center,
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1.0] ,
                  colors: [
                   Color(0xFFF58524),
                   Color(0XFFF92B7F),
                  ],
                ),
                border: Border.all(
                  width: 4.0,
                  color: const Color(0XFFFFFFFF),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(300),
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
                  fontSize: 15,
                ),
              ),
              validator: (input) => input.length < 4? 'não foi preenchido': null,
              onSaved: (input) => _nome = input,
              style: TextStyle(
                fontSize: 15,
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
                  fontSize: 15,
                ),
              ),
              validator: (input) => !input.contains('0') ? 'não é um E-mail valido': null,
              onSaved: (input) => _email = input,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
              validator: (input) => input.length < 8 ? 'não é uma senha valida': null,
              onSaved: (input) => _password = input,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
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
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Text(
                      "Cadastrar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: _submit,
                  ),
                ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
       ),
      ),
    );
  }
}

void _submit () {
  if(formKey.currentState.validate()){
  formKey.currentState.save();
  }
    
}
  


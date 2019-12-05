import 'package:flutter/material.dart';
import 'package:todo/pages/home.page.dart';
import 'package:todo/pages/reset-passoword.page.dart';
import 'package:todo/pages/signup.page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
final formKey = GlobalKey<FormState>();
String _email, _password;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
        child:Form(
        key: formKey,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    validator: (input) => !input.contains('0') ? 'não é um E-mail valido': null,
                    onSaved: (input) => _email = input,
                  ),
                Divider(),
                  TextFormField(
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),
                    decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    validator: (input) => input.length < 8 ? 'não é uma senha valida': null,
                    onSaved: (input) => _password = input,
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
                          "Entrar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () {
                          _submit();
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomePage(),));
                        },
                      ),
                    ),
                ),
              Divider(),
                Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.centerRight,
                    child: FlatButton(
                      child: Text(
                        "Recuperar senha",
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResetaPage(),
                          ),
                        );
                      },
                    ),
                  ),
                Divider(),
                  Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    child: FlatButton(
                      child: Text(
                        "Cadastrar-se",
                      ),
                      onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupPage(),
                          ),
                        );
                      },
                    ),
                  ),
            ],
          ),
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
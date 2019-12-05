import 'package:flutter/material.dart';

class ResetaPage extends StatefulWidget {
  @override
  _ResetaPageState createState() => _ResetaPageState();
}
final formKey = GlobalKey<FormState>();
String _email;

class _ResetaPageState extends State<ResetaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recuperação de senha"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                Text(
                 "Esqueçeu sua senha!?",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
                ),
                SizedBox(
                height: 50,
                ),
                Text(
                 "Porfavor informe seu E-mail açossiado com a conta que enviaremos um link para o mesmo com as instruções de Recuperação",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
                ),
                 SizedBox(
                height: 10,
                ),
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
              SizedBox(
                height: 20,
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
                      "Enviar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                      textAlign: TextAlign.center
                    ),
                    onPressed: _submit,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
             ],
            ),
          ),
        ),
      ),
    );
  }
}

void _submit(){
  if(formKey.currentState.validate()){
    formKey.currentState.save();
  }
}
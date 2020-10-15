
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
//este es un estado
String _textValue= '';

void _updateTextFieldValue(String v){
  _textValue = v;
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("State on Stateless Widget"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          //Para seguir con el arbol de widgets
          child: Column( //Nos deja tomar más widgets dentro de otro
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            //Para anidar nuevos elementos
            children: <Widget>[
              TextField(
                onChanged: (value) => _updateTextFieldValue(value), //onChanged es un evento
              ),
              SizedBox(height: 10.0,), //Para dejar un espacio entre los widgets
              Text(_textValue),
            ],
          ),
        ),
      )
    );
  }
}

import 'package:aula290824_1/TelaSecundaria.dart';
import 'package:flutter/material.dart';

//importar arquivo da pagina secundaria

void main() {
  runApp(
    MaterialApp(
      home: TelaPrincipal(), //define a pagina principal.
      debugShowCheckedModeBanner: false, //remove a barra debug.
    )
  );
}

class TelaPrincipal extends StatefulWidget {
    @override
    _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal>{
    @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina Principal"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, //tela atual
                  MaterialPageRoute(builder: (context) => TelaSecundaria()) //pagina que iremos.
                );
              }, 
              child: Text("Ir para Página Secundaria"),
            ),
          ],
        ),
      ),
    );
  }
}
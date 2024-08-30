//importa packages do flutter
import 'package:aula290824_1/TerceiraTela.dart';
import 'package:flutter/material.dart';

//criamos a classe

class TelaSecundaria extends StatefulWidget{
  @override
  //implementamos os estados do StatefulWidget
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

//criamos o estado fora da classe principal.
class _TelaSecundariaState extends State<TelaSecundaria>{
  //começamos a criar a tela secundaria
  @override 
  //o contexto, seria a tela.
  Widget build(BuildContext context){
    return Scaffold( //layoult - scaffold
       appBar: AppBar(
        //estilização da appbar
        title: Text("Tela Secundaria"),
        backgroundColor: Colors.lightBlueAccent,
       ),
       //elementos da tela sao criadas em sequencia. - appbar -> body -> footer.
       body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            //corpo da tela secundaria ficará aqui.
            Text("Esta é a Tela Secundaria.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold
              ),
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TerceiraTela()));
              },
              child: Text("Ir para a Terceira Página"),
            ),
          ],
        ),
       ),
    ); 
  }
}
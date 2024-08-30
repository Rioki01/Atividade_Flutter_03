//importa packages do flutter
import 'package:aula290824_1/QuartaTela.dart';
import 'package:flutter/material.dart';

//criamos a classe

class TerceiraTela extends StatefulWidget{
  @override
  //implementamos os estados do StatefulWidget
  _TerceiraTelaState createState() => _TerceiraTelaState();
}

//criamos o estado fora da classe principal.
class _TerceiraTelaState extends State<TerceiraTela>{
  //começamos a criar a tela secundaria
  @override 
  //o contexto, seria a tela.
  Widget build(BuildContext context){
    return Scaffold( //layoult - scaffold
       appBar: AppBar(
        //estilização da appbar
        title: Text("Terceira Tela"),
        backgroundColor: Colors.redAccent,
       ),
       //elementos da tela sao criadas em sequencia. - appbar -> body -> footer.
       body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
           
            //corpo da tela secundaria ficará aqui.
            Image(
              image: NetworkImage('https://i.imgur.com/Wiv2jgJ.png'),
            ),
            Text("Isto é uma imagem!"),

            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => QuartaTela()));
              },
              child: Text("Ir para a Quarta Página"),
            ),
          ],
        ),
       ),
    ); 
  } 
}

//importa packages do flutter
import 'package:aula290824_1/QuintaTela.dart';
import 'package:flutter/material.dart';

//criamos a classe

class QuartaTela extends StatefulWidget{
  @override
  //implementamos os estados do StatefulWidget
  _QuartaTelaState createState() => _QuartaTelaState();
}

//criamos o estado fora da classe principal.
class _QuartaTelaState extends State<QuartaTela>{
  //começamos a criar a tela secundaria
  @override 
  //o contexto, seria a tela.
  Widget build(BuildContext context){
    return Scaffold( //layoult - scaffold
       appBar: AppBar(
        //estilização da appbar
        title: Text("Quarta Tela"),
        backgroundColor: Colors.greenAccent,
       ),
       //elementos da tela sao criadas em sequencia. - appbar -> body -> footer.
       body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            //corpo da tela secundaria ficará aqui.
            
            const RotatedBox(
              quarterTurns: 3,
              child: Text('Isto é uma "RotatedBox"!', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),
                        
                        

            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => QuintaTela()));
              },
              child: Text("Ir para a Quinta Página"),
            ),
          ],
        ),
       ),
    ); 
  } 
}

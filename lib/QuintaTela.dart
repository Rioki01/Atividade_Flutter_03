//importa packages do flutter
import 'package:aula290824_1/main.dart';
import 'package:flutter/material.dart';

//criamos a classe

class QuintaTela extends StatefulWidget{
  @override
  //implementamos os estados do StatefulWidget
  _QuintaTelaState createState() => _QuintaTelaState();
}

//criamos o estado fora da classe principal.
class _QuintaTelaState extends State<QuintaTela>{
  //começamos a criar a tela secundaria
  bool _visible = true;
  @override 
  //o contexto, seria a tela.
  Widget build(BuildContext context){
    return Scaffold( //layoult - scaffold
       appBar: AppBar(
        //estilização da appbar
        title: Text("Quinta Tela"),
        backgroundColor: Colors.purpleAccent,
       ),
       //elementos da tela sao criadas em sequencia. - appbar -> body -> footer.
       body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            
            IconButton(
            icon: const Icon(Icons.assistant_rounded),
            tooltip: 'Faz o texto aparecer/desaparecer',
            isSelected: _visible,
            onPressed: () {
             setState(() {
               _visible = !_visible;
             });
            },     
          ),

          Opacity(
              opacity: _visible ? 1.0 : 0.0,
              child: Text("Este texto vira transparente!!",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold
              ),),
          ),
            //corpo da tela secundaria ficará aqui.


            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TelaPrincipal()));
              },
              child: Text("Ir para a Primeira Página",),
            ),
          ],
        ),
       ),
    ); 
  } 
}

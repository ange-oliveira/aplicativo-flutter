import 'package:flutter/material.dart';



class Resultado extends StatelessWidget {
  
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;
  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);
  String get fraseResultado{
    if (pontuacao<8){
      return'PARABÉNS VOCE GANHOU A KIT';
    } else if(pontuacao<10){
      return'PARABENS VOCE GANHOU A BABALU';
    } else if(pontuacao<20){
      return'PARABÉNS VOCÊ GANHOU A BABALU E A KITKAT';
    } else{
      return'voce pode levar todos da casa';
    }

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
          fraseResultado,
         style:TextStyle(fontSize: 30),),
         ),
         FlatButton(
          child: Text('Reiniciar?',
         style: TextStyle(fontSize: 20),),
         textColor: Colors.pink,
         onPressed: quandoReiniciarQuestionario,)
      ],
    );
    
    
  }
}
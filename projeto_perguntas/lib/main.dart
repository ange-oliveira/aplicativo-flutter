import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resultado.dart';
import './questionario.dart';
import '/resultado.dart';
main() => runApp (PerguntaApp());
class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada=0;
  var _pontuacaoTotal=0;
   final List<Map<String,Object>>_perguntas =const[
      {
        'texto':'Qual a sua cor favorita?',
        'respostas':
           [ {'texto':'preto','pontuacao':10},
            {'texto':'lilas ','pontuacao':5},
            {'texto':'rosa','pontuacao':3} ,
            {'texto':'verde','pontuacao':2},
            ],
      },
      {
        'texto': 'Qual é o seu suco favorito?',
        'respostas':
        [
        {'texto': 'morango','pontuacao':10},
        {'texto': 'uva','pontuacao':5},
        {'texto': 'abacaxi','pontuacao':3},
        {'texto': 'melancia','pontuacao':2}],
      },
      {
        'texto': 'Qual o seu animal favorito',
        'respostas':
        [
        {'texto':'peixe','pontuacao':10},
        {'texto':'vaca','pontuacao':5},
        {'texto':'tartaruga','pontuacao':3},
        {'texto':'lesma','pontuacao':2},
        ],
      }
    
    ];


  void _responder(int pontuacao){
    if(temPerguntaSelecionada){
       setState(() {
    _perguntaSelecionada++;
    _pontuacaoTotal+=pontuacao;
   
      
    });
    }
  }
    void _reiniciarQuestionario(){
      setState(() {
        _perguntaSelecionada=0;
        _pontuacaoTotal=0;
      });
    }
    
   
  
   bool get temPerguntaSelecionada {

  return _perguntaSelecionada < _perguntas.length;
  }
  
  
  @override
  Widget build (BuildContext context){
   
   
    
  
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('perguntas'),
         
        ),
        body: temPerguntaSelecionada
        ? Questionario(perguntas: _perguntas,
         perguntaSelecionada: _perguntaSelecionada,
          quandoresponder: _responder)
      
      : Resultado(_pontuacaoTotal, _reiniciarQuestionario),

    ),);
  }
  

}

class PerguntaApp extends StatefulWidget { 
  _PerguntaAppState createState(){
    return _PerguntaAppState();
  }

}

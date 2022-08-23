 import 'package:flutter/material.dart';
class resposta extends StatelessWidget {
  final String texto;
 final void Function() quandoselecionado;
  resposta(this.texto, this.quandoselecionado);
  @override
  Widget build(BuildContext context) {
     return Container(
      width: double.infinity,
       child: RaisedButton(
        textColor: Colors.white,
        color: Colors.purple[700],
                child: Text(texto),
            onPressed:quandoselecionado,
            ),
     );
    
  }
}
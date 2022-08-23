
import 'package:flutter/material.dart';

class questao extends StatelessWidget {
  final String Texto;
  questao(this.Texto);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(25),
      child: Text(
        Texto,
      style: TextStyle(
        fontSize: 28,
      ) ,textAlign: TextAlign.center,
      ),
    );
    
    
  }
}
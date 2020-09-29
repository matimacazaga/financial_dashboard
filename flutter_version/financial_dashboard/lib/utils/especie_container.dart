import 'package:flutter/material.dart';

Container getEspecieContainer(String especie){
    Color color;
    FontWeight fontWeight = ['AL29', 'AL30', 'AL35', 'AE38', 'AL41'].contains(especie) ? FontWeight.w900 : FontWeight.w500;

    if (especie.startsWith('AL29')){
      color = Colors.deepPurple;
    } else if (especie.startsWith('AL30')) {
      color = Colors.blue;
    } else if (especie.startsWith('AL35')) {
      color = Colors.teal[800];
    } else if (especie.startsWith('AE38')) {
      color = Colors.cyan;
    } else if (especie.startsWith('AL41')) {
      color = Colors.lightBlue[800];
    } else {
      color = null;
    }

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(especie, style: TextStyle(fontWeight: fontWeight, color: Colors.white)),
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(5))
      ),
    );
  }

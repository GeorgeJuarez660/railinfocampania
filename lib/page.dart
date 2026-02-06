import 'package:flutter/material.dart';

class Prova extends StatelessWidget{
  const Prova({super.key});

  @override
  Widget build(BuildContext context) {
    final int number;

    number = 200;

    return Scaffold(
      appBar: AppBar( //testa
        title: const Center( //inserisco il contenitore
            child: Image( //all'interno metto l'immagine
                image: AssetImage('assets/images/logo.png'),
                width: 170
            )
        ),
        toolbarHeight: 120, //altezza della testa
        backgroundColor: Colors.transparent, //colore della testa
      ),
      body: const ColoredBox(//a differenza di java, si mette prima il layout ColoredBox per la posizione e poi il contenitore
          color: Colors.lightBlue,
          child: const Align( //a differenza di java, si mette prima il layout Align per la posizione e poi il contenitore
            alignment: Alignment.center,
            child: Column( //inserisco il contenitore colonna nel corpo
              mainAxisSize: MainAxisSize.min, //occupa il minimo indispensabile in base ai contenuti
              children: <Widget>[ //i figli
                Text("Benvenuto", style: TextStyle(fontSize: 20)),
              ],
            ),
          )
      ),
    );

  }

}
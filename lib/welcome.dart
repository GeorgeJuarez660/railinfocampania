import 'package:flutter/material.dart';

class Benvenuto extends StatelessWidget{
  const Benvenuto({super.key});

  @override
  Widget build(BuildContext context) {
    final int number;

    number = 200;

    return Scaffold( //inizio stile app
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
      body: const ColoredBox(//nel corpo, a differenza di java, si mette prima il layout ColoredBox per il colore e poi il layout posizione
          color: Colors.lightBlue,
          child: const Align( //sempre a differenza di java, si mette prima il layout Align per la posizione e poi il contenitore
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
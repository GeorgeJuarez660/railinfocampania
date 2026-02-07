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
      body: ColoredBox(//nel corpo, a differenza di java, si mette prima il layout ColoredBox per il colore e poi il layout posizione
          color: Colors.lightBlue,
          child: Align( //sempre a differenza di java, si mette prima il layout Align per la posizione e poi il contenitore
            alignment: Alignment.center, //allineo al centro
            child: Column( //inserisco il contenitore colonna nel corpo
              mainAxisSize: MainAxisSize.min, //occupa il minimo indispensabile in base ai contenuti
              spacing: 200, //inserisci lo spazio tra figli
              children: <Widget>[ //i figli
                const Text("Benvenuto", style: TextStyle(fontSize: 62, color: Colors.white, fontFamily: 'ZenMaruGothic', fontWeight: FontWeight.w700)),
                ElevatedButton( //inserisco il pulsante
                    onPressed: () {}, //dove metto il testo come figlio
                    style: ElevatedButton.styleFrom( //qui lo stilizzo
                      backgroundColor: Color(0xFF0495CD),
                      padding: EdgeInsets.symmetric(horizontal: 310, vertical: 17)
                    ), //metto il figlio
                    child: const Text("ENTRA", style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'ZenMaruGothic', fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          )
      ),
    );

  }

}
import 'package:flutter/material.dart';

class Benvenuto extends StatelessWidget{
  const Benvenuto({super.key});

  @override
  Widget build(BuildContext context) {
    final int number;

    number = 200;

    return Scaffold( //inizio stile app
      extendBodyBehindAppBar: true, //estendi il body sotto l'appBar
      appBar: AppBar( //testa
        title: const Center( //inserisco il contenitore
            child: Image( //all'interno metto l'immagine
                image: AssetImage('assets/images/logo.png'),
                width: 200
            )
        ),
        toolbarHeight: 120, //altezza della testa
        backgroundColor: Colors.transparent, //colore della testa
      ),
      body: DecoratedBox(//nel corpo, a differenza di java, si mette prima il layout DecoratedBox per il colore e poi il layout posizione
          decoration: const BoxDecoration( //inserisco la decorazione
            gradient: LinearGradient( //inserisco il gradiente lineare
              colors: [
                Color(0xff97e3ff), //colori
                Color(0xff53b7ff),
              ],
              begin: AlignmentGeometry.topCenter, //direzione del gradiente
              end: AlignmentGeometry.bottomCenter,
            ),
          ),
          child: Align( //sempre a differenza di java, si mette prima il layout Align per la posizione e poi il contenitore
            alignment: Alignment.bottomCenter, //allineo al centro-basso
            child: Column( //inserisco il contenitore colonna nel corpo
              mainAxisSize: MainAxisSize.min, //occupa il minimo indispensabile in base ai contenuti
              //spacing: 200, //inserisci lo spazio statico tra figli
              children: <Widget>[ //i figli
                Spacer(), //inserisci lo spazio flessibile tra un figlio e l'altro
                const Text("Benvenuto", style: TextStyle(fontSize: 62, color: Colors.white, fontFamily: 'ZenMaruGothic', fontWeight: FontWeight.w700)),
                Spacer(), //inserisci lo spazio flessibile tra un figlio e l'altro
                Column(
                  spacing: 15, //inserisci lo spazio tra figli
                  children: <Widget>[
                    ElevatedButton( //inserisco il pulsante
                      onPressed: () {}, //dove metto il testo come figlio
                      style: ElevatedButton.styleFrom( //qui lo stilizzo
                          backgroundColor: Color(0xFF0495CD),
                          padding: EdgeInsets.symmetric(horizontal: 150, vertical: 17)
                      ), //metto il figlio
                      child: const Text("ENTRA", style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'ZenMaruGothic', fontWeight: FontWeight.w500)),
                    ),
                    ElevatedButton( //inserisco il pulsante
                      onPressed: () {}, //dove metto il testo come figlio
                      style: ElevatedButton.styleFrom( //qui lo stilizzo
                          backgroundColor: Color(0xFFFF5757),
                          padding: EdgeInsets.symmetric(horizontal: 110, vertical: 17)
                      ), //metto il figlio
                      child: const Text("ESCI", style: TextStyle(fontSize: 17, color: Colors.white, fontFamily: 'ZenMaruGothic', fontWeight: FontWeight.w500)),
                    ),
                  ],//i figli
                ),
                Spacer(), //inserisci lo spazio flessibile tra un figlio e l'altro
                Align( //allineo la riga al centro
                  alignment: Alignment.center,
                  child: Row( //riga
                    spacing: 7, //spazio tra elementi
                    mainAxisSize: MainAxisSize.min, //occupa il minimo indispensabile in base ai contenuti
                    children: [
                      IconButton( //pulsante a icona
                          icon: Image.asset('assets/images/info.png', width: 60, height: 60),
                          onPressed: () {
                          }
                      ),
                      IconButton( //pulsante a icona
                          icon: Image.asset('assets/images/world.gif', width: 95, height: 95),
                          onPressed: () {
                          }
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );

  }

}
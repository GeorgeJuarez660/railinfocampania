import 'package:flutter/material.dart';

class Arrivederci extends StatelessWidget{
  const Arrivederci({super.key});

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
          child: Align( //a differenza di java, si mette prima il layout Align per la posizione e poi il contenitore
            alignment: Alignment.center, //allineo al centro
            child:
              const Text( //inserisco il testo
                  "Arrivederci e grazie",
                  style: TextStyle(fontSize: 62, color: Colors.white, fontFamily: 'ZenMaruGothic', fontWeight: FontWeight.w700)
              ),
          )
      ),
    );

  }

}
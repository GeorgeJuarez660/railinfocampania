import 'package:flutter/material.dart';

class CambioLingua extends StatelessWidget{
  const CambioLingua({super.key}); //costruttore



  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
          alignment: Alignment.topCenter, //allineo al centro
          child: Column( //inserisco il contenitore colonna
            mainAxisSize: MainAxisSize.min, //occupa il minimo indispensabile in base ai contenuti
            children: <Widget>[ //i figli
              SizedBox(height: 10), //uso SizedBox, utlizzato simile a Spacer ma con altezza regolata
              Align(
                alignment: Alignment.centerLeft, //allineo a centro-sinistra
                child: Row( //riga
                  mainAxisSize: MainAxisSize.min, //occupa il minimo indispensabile in base ai contenuti
                  children: <Widget>[
                    SizedBox(width: 10), //uso SizedBox, utlizzato simile a Spacer ma con altezza regolata,
                    ElevatedButton( //inserisco il pulsante
                      onPressed: () {}, //dove metto il testo come figlio
                      style: ElevatedButton.styleFrom( //qui lo stilizzo
                          backgroundColor: Colors.transparent,
                          side: const BorderSide(color: Color(0xFFFF5757), width: 2), //qui regolo il colore e lo spessore del bordo
                          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
                          shadowColor: Colors.transparent
                      ), //metto il figlio
                      child: Image( //all'interno metto l'immagine
                          image: AssetImage('assets/images/backSym.png'),
                          width: 26
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),

        ),
      ),

    );
  }



}
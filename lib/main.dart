import 'package:flutter/material.dart';
import 'package:railinfocampania/welcome.dart';
import 'package:railinfocampania/goodbye.dart';

void main() {
  runApp(const RICampaniaApp());
}

class RICampaniaApp extends StatelessWidget {
  const RICampaniaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //tipo app
      title: 'RailInfo Campania', //titolo app
      home: const Benvenuto(), //classe di partenza
    );
  }
}

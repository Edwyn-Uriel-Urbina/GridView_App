import 'package:flutter/material.dart';
import 'package:urbina/material.dart'

void main() {
  runApp(MascotasApp());
} // Funcion Principal

class MascotasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Veterinaria',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        home: PaginaInicial());
  } // Widget
} // MascotasApp widget sin estado


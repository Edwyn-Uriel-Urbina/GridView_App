import 'package:flutter/material.dart';

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
          primarySwatch: Colors.green,
        ),
        home: PaginaInicial());
  } // Widget
} // MascotasApp widget sin estado

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key? key}) : super(key: key);
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
} // Pagina con Estado

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/scenary.jpg",
    "assets/images/scenary_red.jpg",
    "assets/images/waterfall.jpg",
    "assets/images/tree.jpg",
    "assets/images/scenery.jpg",
    "assets/images/scenary_red.jpg",
    "assets/images/waterfall.jpg",
    "assets/images/tree.jpg",
    "assets/images/scenary.jpg",
    "assets/images/scenary_red.jpg",
    "assets/images/waterfall.jpg",
    "assets/images/tree.jpg",
    "assets/images/scenery.jpg",
    "assets/images/scenary_red.jpg",
    "assets/images/waterfall.jpg",
    "assets/images/tree.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView"),
        ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 16,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}

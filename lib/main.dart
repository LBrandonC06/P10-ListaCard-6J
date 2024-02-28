import 'package:flutter/material.dart';

void main() => runApp(const MiListaCard());

class MiListaCard extends StatelessWidget {
  const MiListaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Mi ListView Cristobal',
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        home: const InicioDePaguina());
  }
}

class InicioDePaguina extends StatefulWidget {
  const InicioDePaguina({Key? key}) : super(key: key);

  @override
  State<InicioDePaguina> createState() => _InicioDePaguinaState();
}

class _InicioDePaguinaState extends State<InicioDePaguina> {
  @override
  List<String> images = [
    "assets/images/a1.png",
    "assets/images/a2.png",
    "assets/images/a3.jpg",
    "assets/images/a4.png",
    "assets/images/a5.png",
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Cristobal'),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index]),
                ),
                title: Text("El Titulo"),
                subtitle: Text("El Subtitulo"),
              ),
            );
          },
          itemCount: images.length,
          shrinkWrap: true,
          padding: EdgeInsets.all(5),
          scrollDirection: Axis.vertical,
        ));
  }
}

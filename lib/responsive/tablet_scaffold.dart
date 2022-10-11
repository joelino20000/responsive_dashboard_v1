//Joel bautista
//se hacen importaciones de las diferentes hojas y librerias
import 'package:flutter/material.dart';
import 'package:responsive_dashboard_v0/responsive/constants.dart';
import 'package:responsive_dashboard_v0/util/my_box.dart';
import 'package:responsive_dashboard_v0/util/my_tile.dart';

//se crea clase tabletscaffold de forma stateful
class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

//se crea de clase privada tabletscafold
class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    //se crea un scaffold sirve  Es un widget que es usado para contener otros widgets.
    return  Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      //se crea un cuerpo que contiene una columna
      body: Column(
        children: [
          //4 cajas en la parte superior
          AspectRatio(//utilizar para no definir valores fijos de width y heigth
            aspectRatio: 2, //width y height tienen igual valor (cuadrados)
            child: SizedBox(
              width: double.infinity,
              child: ListView.builder(
                  itemCount: 1,// 2 cajas por fila
                  itemBuilder: (context,index){
                    return const MyBox();
                  }
              ),
            ),
          ),
          //Mosaico para completar el cuerpo
          Expanded(
            child:ListView.builder(
              itemBuilder: (context, index){
                return const MyTile();
              },
            ),
          )
        ],
      ),
    );
  }
}

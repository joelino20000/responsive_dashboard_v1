//Joel bautista
//se hacen importaciones de las diferentes hojas y librerias
import 'package:flutter/material.dart';
import 'package:responsive_dashboard_v0/responsive/constants.dart';
import 'package:responsive_dashboard_v0/util/my_box.dart';
import 'package:responsive_dashboard_v0/util/my_tile.dart';

//se crea desktopscaffold de tipo stateful
class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

//se crea una clase privada de desktopScaffoldState
class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    //se retorna un Scaffold la cual sirve Es un widget que es usado para contener otros widgets
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      //se crea una fila para  poner  un anuncio publicitario
      body: Row(
       children: [
         //abrir drawer
         myDrawer,
         //demas elementos del body
         Expanded(
           flex: 3,
             child: Column(
               children: [
                 //4 cajas en la parte superior
                 AspectRatio(//utilizar para no definir valores fijos de width y heigth
                     aspectRatio: 2,
                   child: SizedBox(
                     width: double.infinity,
                     child: ListView.builder(
                       itemCount: 1,
                       itemBuilder: (context, index){
                         return const MyBox();
                       }
                     ),
                   ),
             ),
             //Mosaico para completar el cuerpo
             Expanded(
               child:ListView.builder(
                 itemCount: 5,
                 itemBuilder: (context, index){
                   return const MyTile();
                 },
             ),
            )
               ],
             ),
         ),
         Expanded(
             child:Column(
                children: [
                  Expanded(
                      child: Column (
                       children: const [Expanded(child:
                       Image(image: AssetImage('imagenes/anunciodoria.png'),)
                       )],
                      ),
                  ),
                ],
             )
         )
       ]
      )
    );
  }
}

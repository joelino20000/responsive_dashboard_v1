//Joel bautista
//se hacen importaciones de las diferentes hojas y librerias
import 'package:flutter/material.dart';
import 'package:responsive_dashboard_v0/responsive/constants.dart';
import 'package:responsive_dashboard_v0/util/my_box.dart';
import 'package:responsive_dashboard_v0/util/my_tile.dart';


//se crea tv_scaffold de forma stateful
class Tv_Scaffold extends StatefulWidget {
  const Tv_Scaffold({Key? key}) : super(key: key);

  @override
  State<Tv_Scaffold> createState() => _Tv_ScaffoldState();
}

//se crea de forma privada tv scaffold
class _Tv_ScaffoldState extends State<Tv_Scaffold> {
  @override
  Widget build(BuildContext context) {
    //se crea un scaffold la cual sirve para Es un widget que es usado para contener otros widgets.
    return Scaffold(
        appBar: myAppBar,
        backgroundColor: myDefaultBackground,
        //se crea un cuerpo la cual va a tener una fila que va a tener unas acciones
        body: Row(
            children: [
              //abrir drawer
              myDrawer,
              //demas elementos del body
              Expanded(
                flex: 5,
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
                        itemCount: 7,
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
                        child: (
                            Container(
                              color: Colors.pink,
                            )
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

//Joel bautista
//se hacen importaciones de las diferentes hojas y librerias
import 'package:flutter/material.dart';

//se crea my box de tipo statelessWidget
class MyBox extends StatelessWidget {
  const MyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //se retorna padding la cual dira las imagenes que habran en el encabezado
    return Padding(
      padding: const EdgeInsets.all(3.0),
      //aca se traen las imagenes alineadas en fila
      child: Row (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [Expanded(child:
        Image(image: AssetImage('imagenes/img1.png'),)
        ),
        Expanded(child:
          Image(image: AssetImage('imagenes/img2.png'),)
          ),
        Expanded(child:
          Image(image: AssetImage('imagenes/img3.jfif'),)
          ),
        ],
      ),
      );
  }
}

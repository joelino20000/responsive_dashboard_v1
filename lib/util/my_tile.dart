//Joel bautista
//se hacen importaciones de las diferentes hojas y librerias
import 'package:flutter/material.dart';

//se crea la clase mytile de tipo stateles
class MyTile extends StatelessWidget {
  const MyTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //se retorna el padding para dar formato y color al aplicacion
    return Padding(
        padding: const EdgeInsets.all(3.0),
        //se carga una columna de tipos card que cada una va a contener un texto e imagen
        child: Column(
          children: const[
            Card(child:
              ListTile(
                contentPadding: EdgeInsets.all(8.0),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('imagenes/img1.png'),
                ),
                title: Text('P A S T A S  D O R I A  C A R N E'),
                trailing: Icon(Icons.favorite),

              ),
            ),
            // card que cada una va a contener un texto e imagen
            Card(child:
            ListTile(
              contentPadding: EdgeInsets.all(8.0),
              leading: CircleAvatar(
                backgroundImage: AssetImage('imagenes/img2.png'),
              ),
              title: Text('P A S T A  D O R I A  S A B O R I Z A D A S '),
              trailing: Icon(Icons.favorite),
            ),
            ),

            // card que cada una va a contener un texto e imagen
            Card(child:
            ListTile(
              contentPadding: EdgeInsets.all(8.0),
              leading: CircleAvatar(
                backgroundImage: AssetImage('imagenes/img3.jiif'),

              ),
              title: Text('P A S T A  D O R I A  G L U T E N '),
              trailing: Icon(Icons.favorite),

            ),
            ),

          ]
        ),
    );
  }
}

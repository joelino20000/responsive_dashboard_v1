//Joel bautista
//se hacen importaciones de las diferentes hojas y librerias
import 'package:flutter/material.dart';
import 'package:responsive_dashboard_v0/pagina_principal.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    //se declara una variable y se declara cuanto va a durar el splash
    var d= const Duration(seconds: 4);
    //se define a donde me va a llevar depsues del splash
    Future.delayed(d, (){
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context){
            return const MyApp();
          }), (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //vamos a retornar un scaffold que contenga el splash
    return Scaffold(
      //Stack te permite apilar los widgets uno encima del otro en el orden como se pintan.
      body: Stack(
        children: <Widget>[
          //vamos a retornar un container y la cual esta va a tener una imagen
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("imagenes/doria.jpg"),
                //fit: BoxFit.cover,
              ),
            ),
            //se declara un hijo que va a tener el texto de parta doria
            child: const Align(
              alignment: Alignment.bottomLeft,
              child: ListTile(
                title: Text("Pastadoria", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          //se crea un aling para un icono flotante  que girara
          const Padding(padding: EdgeInsets.all(55.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

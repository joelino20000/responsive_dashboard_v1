//Joel bautista
//se hacen importaciones de las diferentes hojas y librerias
import 'package:flutter/material.dart';
import 'package:responsive_dashboard_v0/pagina_principal.dart';
import 'package:responsive_dashboard_v0/splash.dart';

//se le da inicio a la aplicacion  para que funcione el splash
void main() => runApp(const Inicio());
class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //se define a que ruta los va a llevar con un splash y inicio
      initialRoute: "splash",//se crea una ruta inicial
      routes: {
        "splash":(_)=>const SplashScreen(),
        "inicio":(_)=>const MyApp(),
      },
    );
  }
}



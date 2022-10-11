//Joel bautista
//se hacen importaciones de las diferentes hojas y librerias
import 'package:flutter/material.dart';
import 'package:responsive_dashboard_v0/responsive/responsive_layout.dart';
import 'package:responsive_dashboard_v0/responsive/mobile_scaffold.dart';
import 'package:responsive_dashboard_v0/responsive/tablet_scaffold.dart';
import 'package:responsive_dashboard_v0/responsive/desktop_scaffold.dart';
import 'package:responsive_dashboard_v0/responsive/tv_scaffold.dart';
//se crea un elemento que me retorna myapp
void main() {
  runApp(const MyApp());
}

//se crea la clase myapp de tipo statelesswidget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //se retorna un materialapp la cual nos va a llevar a las diferentes hojas dependiendo el tamaño
    return const MaterialApp(
        debugShowCheckedModeBanner: false,


        home: ResponsiveLayout(
          mobileScaffold: MobileScaffold(),
          tabletScaffold: TabletScaffold(),
          desktopScaffold: DesktopScaffold(),
          tvScaffold: Tv_Scaffold(),
        )
    );
  }
}
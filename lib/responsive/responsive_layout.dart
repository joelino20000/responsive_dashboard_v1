//Joel bautista
//se hacen importaciones de las diferentes hojas y librerias
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {

  final Widget mobileScaffold;//Widget que ajusta el tamaño a dispositivos moviles
  final Widget tabletScaffold; //Widget que ajusta el tamaño tableta
  final Widget desktopScaffold;//widget que ajusta el tamaño desktop
  final Widget tvScaffold;//Widget que ajusta el tamaño a maquinas de escritorio

  //se crea un constructor
  const ResponsiveLayout({
  required this.mobileScaffold,
  required this.tabletScaffold,
  required this.desktopScaffold,
  required this.tvScaffold,
  }
  );//constructores de la clase

  @override
  // se crea para que me muestre dependiendo los pixxeles me muestre una diferente pantalla
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth< 500){
          return mobileScaffold;
        } else if(constraints.maxWidth < 1100){
          return tabletScaffold;
        }else if(constraints.maxWidth<1960){
          return desktopScaffold;
        }else{
          return tvScaffold;
        }
      },
    );
  }
}

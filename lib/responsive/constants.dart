//Joel bautista
//se hacen importaciones de las diferentes hojas y librerias
import 'package:flutter/material.dart';

var myDefaultBackground = Colors.grey[300];

var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
    title:const Center(
        child: Text("D o r i a")
    ),
  actions: const [
    Image(image:   AssetImage('imagenes/logoappbar2.png'))
  ],
  );

var myDrawer = Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: const BoxDecoration(
          color: Colors.deepOrange,
        ),
        child: Column(
          children: const[
            Text(
              "U s u a r i o",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
              size: 70.0,
            )
          ],
        ),
      ),
      const ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text("P R I N C I P A L"),
      ),
      const ListTile(
        leading: Icon(
          Icons.contact_page_sharp,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text("C O N O C E N O S"),
      ),
      const ListTile(
        leading: Icon(
          Icons.chat,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text("M E N S A J E S"),
      ),
      const ListTile(
        leading: Icon(
          Icons.settings,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text("C O N F I G U R A C I O N"),
      ),
      const ListTile(
        leading: Icon(
          Icons.camera_alt,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text("V I D E O S"),
      ),
      const ListTile(
        leading: Icon(
          Icons.shopping_cart,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text("V E N T A"),
      ),
      const ListTile(
        leading: Icon(
          Icons.logout,
          color: Colors.black,
          size: 30.0,
        ),
        title: Text("S A L I R"),
      ),
    ],
  ),
);
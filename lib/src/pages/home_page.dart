import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {

  final estiloText = new TextStyle(fontSize: 25);
  final amarilloGhost = const Color.fromARGB(233, 233, 222, 15);
  final flecha = Icon(Icons.chevron_right);
  final invitado = true;

  


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
        centerTitle: true,
        backgroundColor: amarilloGhost ,
        actions: <Widget>[
          IconButton(
              icon: Icon(FontAwesomeIcons.qrcode),
              onPressed: () { },
            ),
        ],
        
        ),
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: <Widget>[
            Text('Numero de clicks', style: estiloText,),
            Text('0', style: estiloText), 
          ],

        ),
        ),
      drawer: _creaDrawer(),
    );
  }

  Widget _creaDrawer () {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Invitado', textAlign: TextAlign.center,),
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              decoration: new BoxDecoration(
              color: amarilloGhost
              )
              
              ),
            ListTile(
              title: Text('Inicio'),
              trailing: flecha,
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                // Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Pedidos Realizados'),
              trailing: flecha,
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                // Navigator.pop(context);
              },
            ),
           Divider(),
           ListTile(
              title: Text('Cupón'),
              trailing: flecha,
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
               //  Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Ciudad'),
              trailing: flecha,
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                // Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Idioma'),
              trailing: flecha,
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                // Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Carrito de compra'),
              trailing: flecha,
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                // Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Mis direcciones'),
              trailing: flecha,
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                // Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Ayuda'),
              trailing: flecha,
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                // Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Iniciar sesión'),
              trailing: flecha,
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                // Navigator.pop(context);
              },
            ),
            Divider(),
          ],
        ),
      );
  }
}
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class HomePage extends StatelessWidget {

  final estiloText = new TextStyle(fontSize: 25);
  final amarilloGhost = const Color.fromARGB(233, 233, 222, 15);
  final flecha = Icon(Icons.chevron_right);
  final invitado = true;
  final listaDrawer = ['Inicio', 'Pedidos realizados', 'Cupón', 'Ciudad', 'Idioma',
                       'Carrito de compra', 'Mis direcciones', 'Ayuda', 'Iniciar sesión' ];
  


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
        centerTitle: true,
        elevation: 4.0,
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
            Text('A desplegar 4 Contenedores', style: estiloText,),
            
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
          children: _opciones(listaDrawer),
          )
          );
  }

  List<Widget> _opciones(listaDrawer) {

    List<Widget> listaOpciones = [];
    listaOpciones.add(
            DrawerHeader(
              child: Column(
                children: <Widget>[
                  // Image.asset('lib/src/images/Logo_GhostFood.png'),
                  Text('Que pasa', textAlign: TextAlign.center,),
                  ]
                ),

              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              decoration: new BoxDecoration(
              color: amarilloGhost
              )
              
              ));
    for (var opcion in listaDrawer) {
      listaOpciones..add(ListTile(
              title: Text(opcion),
              trailing: flecha,
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                // Navigator.pop(context);
              },
            ),)
            ..add(Divider(height: 2.0,),);
    }
    
  return listaOpciones;
  }
}
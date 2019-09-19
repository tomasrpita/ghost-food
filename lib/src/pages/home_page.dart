import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ghost_food/src/pages/qr_page.dart';



class HomePage extends StatelessWidget {

  final estiloText = new TextStyle(fontSize: 25);
  final amarilloGhost = const Color.fromARGB(233, 233, 222, 15);
  final flecha = Icon(Icons.chevron_right);
  final invitado = true;
  final listaDrawer = ['Inicio', 'Pedidos realizados', 'Cupón', 'Ciudad', 'Idioma',
                       'Carrito de compra', 'Mis direcciones', 'Ayuda', 'Iniciar sesión' ];
  final listaIcDrawer = [Icons.home, Icons.list, Icons.confirmation_number, Icons.settings_applications,
                         Icons.g_translate, Icons.shopping_cart, Icons.perm_contact_calendar, 
                         Icons.help_outline, Icons.lock_open];


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
        centerTitle: true,
        elevation: 0.0,
        
        actions: <Widget>[
          IconButton(
              icon: Icon(FontAwesomeIcons.qrcode),
              onPressed: () {
                final route = MaterialPageRoute(
                              builder: (context) => QrPage()        
          );

          Navigator.push(context, route);
               },
            ),
        ],
        
        ),
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.start ,
          children: <Widget>[
            Image.asset('lib/src/images/top_contenedor.png'),
            Expanded(
              child:  ListView(
              children: <Widget>[
                Row(children: <Widget>[
                  Expanded( child:Card(child: Text('1'),),),
                  Expanded( child:Card(child: Text('2'),),),
                  
                ],)
              ],
            ))
            
            
          ],

        ),
        ),
      drawer: _creaDrawer(context),
    );
  }

  Widget _creaDrawer (context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: _opciones(listaDrawer, context),
          )
          );
  }

  List<Widget> _opciones(listaDrawer, context) {

    List<Widget> listaOpciones = [];
    listaOpciones.add(
            DrawerHeader(
              
              // child: Text('Invitado', textAlign: TextAlign.center, style: TextStyle(fontSize: 25)),
             child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  // Image.asset('lib/src/images/Logo_GhostFood.png'),
                  Text('Invitado', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
                  
                  Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),

                  Divider(height: 10.0, thickness: 3.0, 
                          indent: 25.0, endIndent: 30.0, color: amarilloGhost,),
                  
                  ]
                ), 

              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              decoration: new BoxDecoration(
                image: DecorationImage(
                image: ExactAssetImage('lib/src/images/Logo_GhostFood.png'),), 
                // color: amarilloGhost */
              )
              
              ));
    int i = 0;
    for (var opcion in listaDrawer) {
      listaOpciones..add(ListTile(
              leading: Icon(listaIcDrawer[i]),
              title: Text(opcion),
              trailing: flecha,
              onTap: () {
                switch (opcion) {
                  case "Ayuda":
                  {
                    Navigator.pushNamed(context, "ayuda");
                  }
                  
                  break;
                  
                  case "Carrito de compra":
                  {
                    Navigator.pushNamed(context, "carritoCompra");
                  }
                  
                  break;
                  case "Inicio":
                  {
                    Navigator.pop(context);
                  }
                  
                  break;
                  default:
                  {
                    Navigator.pushNamed(context, "login");
                  }
                }

                 
              },
            ),)
            ..add(Divider(height: 0.0, thickness: 3.0, indent: 60.0,), );
      i++;
    }
    
  return listaOpciones;
  }
}
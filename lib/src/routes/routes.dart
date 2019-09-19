import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import 'package:ghost_food/src/pages/ayuda.dart';
import 'package:ghost_food/src/pages/carrito_compra.dart';
import 'package:ghost_food/src/pages/login.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
   // Devuelve un mapa de con las rutas de la aplicación
   return <String, WidgetBuilder> {
                  '/'              : (BuildContext  context ) => HomePage(),
                  'ayuda'          : (BuildContext  context ) => Ayuda(),
                  'carritoCompra' : (BuildContext  context ) => CarritoCompra(),
                  'login'          : (BuildContext  context ) => Login()

      };
}
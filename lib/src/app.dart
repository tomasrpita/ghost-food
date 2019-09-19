import 'package:flutter/material.dart';
import 'package:ghost_food/src/pages/home_page.dart';
import 'package:ghost_food/src/routes/routes.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build( context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /* home: Center(
        child: HomePage(),
        ), */
       initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (context) => HomePage(),
        );

      },
       theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(233, 233, 222, 15),
          
        )
      ),
    );
  }
}
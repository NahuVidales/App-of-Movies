import 'package:flutter/material.dart';
import 'package:movie_app/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: 'home',
      routes: {
        'home': (context) => HomeScreen(),
        'details': (context) => DetailsScreen()
      },
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
        color: Colors.indigo,
      ),),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:demon_slayer/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: darkTheme,
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomeScreen(),

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      )
    ); 
  }
}

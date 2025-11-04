import 'package:demon_slayer/provider/combatstyle/combat_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:demon_slayer/screens/home_screen.dart';
import 'package:demon_slayer/provider/characters/characters_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CharactersProvider()),
        ChangeNotifierProvider(create:  (_) => CombatStyleProvider()),
      ],
      child: MaterialApp(
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
      ),
    ); 
  }
}

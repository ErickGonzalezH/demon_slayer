import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:demon_slayer/widgets/texts/custom_texts.dart';
import 'package:demon_slayer/screens/characteres/character_screen.dart';

class HomeScreen extends StatefulWidget {
   
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    CharacterScreen(),
    Text('Search'),
    Text('Combat Styles'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: customText(
          text: 'IVANIME', 
          fontSize: 28, 
          fontWeight: FontWeight.bold, 
          color: Colors.orange[700]
        ),
        actions: [
          Icon( Icons.search, size: 30),
          SizedBox(width: 10),
          Icon( Icons.add_alert_sharp, size: 30),
          SizedBox(width: 10),
          Icon(Icons.menu, size: 36 ),
        ],
      ),

      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),

      bottomNavigationBar: Container(

        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.red.withOpacity(.1),
            )
          ],
        ),
        
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.orange[700],
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              // duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: 'Characteres',
                ),
                GButton(
                  icon: LineIcons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: LineIcons.fantasyFlightGames,
                  text: 'Combat Styles',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}


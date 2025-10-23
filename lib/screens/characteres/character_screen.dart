import 'package:flutter/material.dart';

import 'package:demon_slayer/widgets/texts/custom_texts.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({super.key});

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {

  List<String> categories = [
    'Anime',
    'Manga',
    'Movies',
    'OVAs',
    'Specials',
  ];

  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            Container(
              margin: EdgeInsets.only(left: 15),
              child: customText(text:'Página 1', fontSize: 24, fontWeight: FontWeight.bold, ),
            ),
           
            //Primer slider de personajes
            SizedBox(
              height: size.height * 0.3,
              width: size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      SizedBox(width: 20),
                      CustomCard(
                        elevation: 0,
                        childPadding: 0,
                        width: size.width * .5,
                        height: size.height * .3,
                        borderRadius: 20,
                        //Imagen con texto encima
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                'https://www.demonslayer-api.com/api/v1/characters/images/1.webp', 
                                fit: BoxFit.fill,
                                height: size.height * .3,
                                width: size.width * .5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
              )
            ),
        
            SizedBox(height: 15),
        
            Container(
              margin: EdgeInsets.only(left: 15),
              child: customText(text:'Página 2', fontSize: 24, fontWeight: FontWeight.bold, ),
            ),
        
            //Segundo slider de estilos de combate
             SizedBox(
              height: size.height * 0.3,
              width: size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      SizedBox(width: 20),
                      CustomCard(
                        elevation: 0,
                        childPadding: 0,
                        width: size.width * .5,
                        height: size.height * .3,
                        borderRadius: 20,
                        //Imagen con texto encima
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                'https://www.demonslayer-api.com/api/v1/combat-styles/images/sun-breathing.webp', 
                                fit: BoxFit.fill,
                                height: size.height * .3,
                                width: size.width * .5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
              )
            ),

            SizedBox(height: 15),

             Container(
              margin: EdgeInsets.only(left: 15),
              child: customText(text:'Página 3', fontSize: 24, fontWeight: FontWeight.bold, ),
            ),
        
            SizedBox(
              height: size.height * 0.3,
              width: size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      SizedBox(width: 20),
                      CustomCard(
                        elevation: 0,
                        childPadding: 0,
                        width: size.width * .5,
                        height: size.height * .3,
                        borderRadius: 20,
                        //Imagen con texto encima
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                'https://www.demonslayer-api.com/api/v1/combat-styles/images/sun-breathing.webp', 
                                fit: BoxFit.fill,
                                height: size.height * .3,
                                width: size.width * .5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
              )
            ),

            SizedBox(height: 15),

             Container(
              margin: EdgeInsets.only(left: 15),
              child: customText(text:'Página 4', fontSize: 24, fontWeight: FontWeight.bold, ),
            ),
        
            SizedBox(
              height: size.height * 0.3,
              width: size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      SizedBox(width: 20),
                      CustomCard(
                        elevation: 0,
                        childPadding: 0,
                        width: size.width * .5,
                        height: size.height * .3,
                        borderRadius: 20,
                        //Imagen con texto encima
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                'https://www.demonslayer-api.com/api/v1/combat-styles/images/sun-breathing.webp', 
                                fit: BoxFit.fill,
                                height: size.height * .3,
                                width: size.width * .5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
              )
            ),

            SizedBox(height: 15),

             Container(
              margin: EdgeInsets.only(left: 15),
              child: customText(text:'Página 5', fontSize: 24, fontWeight: FontWeight.bold, ),
            ),
        
            SizedBox(
              height: size.height * 0.3,
              width: size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      SizedBox(width: 20),
                      CustomCard(
                        elevation: 0,
                        childPadding: 0,
                        width: size.width * .5,
                        height: size.height * .3,
                        borderRadius: 20,
                        //Imagen con texto encima
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                'https://www.demonslayer-api.com/api/v1/combat-styles/images/sun-breathing.webp', 
                                fit: BoxFit.fill,
                                height: size.height * .3,
                                width: size.width * .5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
              )
            ),
          ],
        ),
      ),
    );
    
  }
}
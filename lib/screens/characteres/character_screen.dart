import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';

import 'package:demon_slayer/constants/constants.dart';
import 'package:demon_slayer/widgets/texts/custom_texts.dart';
import 'package:demon_slayer/screens/characteres/description_screen.dart';
import 'package:demon_slayer/provider/characters/characters_provider.dart';


class CharacterScreen extends StatefulWidget {
  const CharacterScreen({super.key});

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final personajesProvider = Provider.of<CharactersProvider>(context, listen: false);
      personajesProvider.getcharacters1();
    });
  }

  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
      final personajesProvider = Provider.of<CharactersProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(marginPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            customText(text:'Personajes', fontSize: 24, fontWeight: FontWeight.bold, ),

            SizedBox(
              height: size.height * 0.7,
              width: size.width,
              child: ListView.builder(
                itemCount: personajesProvider.characters?.content.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                    final personajes = personajesProvider.characters?.content[index];
                  return Column(
                    children: [
                      CustomCard(
                        elevation: 0,
                        childPadding: 0,
                        borderRadius: 20,
                        borderWidth: 1.5,
                        borderColor: borderColors[index % borderColors.length],
                        splashColor: borderColors[index % borderColors.length],
                        onTap: () {
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DescriptionScreen(
                                color: borderColors[index % borderColors.length],
                                character: personajesProvider.characters!.content[index]
                              ),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Hero(
                                tag: personajes!.img.toString(),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    personajes.img.toString(), 
                                    fit: BoxFit.fill,
                                    height: size.height * .3,
                                    width: size.width * .5,
                                  ),
                                ),
                              ),
                              Center(
                                child: customText(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  text: personajes.name.toString()
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.02)
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
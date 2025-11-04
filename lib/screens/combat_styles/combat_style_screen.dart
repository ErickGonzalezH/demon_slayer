import 'package:demon_slayer/widgets/texts/custom_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
import 'package:provider/provider.dart';

import 'package:demon_slayer/constants/constants.dart';
import 'package:demon_slayer/provider/combatstyle/combat_style.dart';

class CombatStyle extends StatefulWidget {
   
  const CombatStyle({super.key});
  
  @override
  State<CombatStyle> createState() => _CombatStyleState();
}

class _CombatStyleState extends State<CombatStyle> {
  
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final combatStyleProvider = Provider.of<CombatStyleProvider>(context, listen: false);
      combatStyleProvider.getCombatStyles();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
 
    final combatStyleProvider = Provider.of<CombatStyleProvider>(context);
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(marginPadding),
              child: customText(
                text: 'Combat Style', 
                fontSize: 24, 
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.7,
              width: size.width,
              child: ListView.builder(
                itemCount: combatStyleProvider.combatStyle?.content.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  final personajes = combatStyleProvider.combatStyle?.content[index];
                  return Column(
                    children: [
                      CustomCard(
                        elevation: 0,
                        childPadding: 0,
                        borderRadius: 20,
                        borderWidth: 1,
                        //borderColor: borderColors[index % borderColors.length],
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  personajes!.img != ''
                                   ? personajes.img.toString()
                                   : defaultImageUrl, 
                                  fit: BoxFit.fill,
                                  height: size.height * .3,
                                  width: size.width * .5,
                                ),
                              ),
                              SizedBox(
                                width: size.width * .4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    richText(
                                      text1: 'Nombre: ', 
                                      fontWeight1: FontWeight.bold,
                                      text2: personajes.name.toString()
                                    ),
                                    // SizedBox(height: 10),
                                    // richText(
                                    //   text1: 'Edad: ', 
                                    //   fontWeight1: FontWeight.bold,
                                    //   text2: personajes.age.toString()
                                    // ),
                                    // SizedBox(height: 10),
                                    // richText(
                                    //   text1: 'Género: ',
                                    //   fontWeight1: FontWeight.bold,
                                    //   text2: personajes.gender.toString()
                                    // ),
                                    // SizedBox(height: 10),
                                    // richText(
                                    //   text1: 'Race: ',
                                    //   fontWeight1: FontWeight.bold,
                                    //   text2: personajes.race.toString()
                                    // ),
                                    SizedBox(height: 10),
                                    richText(
                                      text1: 'Descripción: ',
                                      fontWeight1: FontWeight.bold,
                                      text2: personajes.description.toString()
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
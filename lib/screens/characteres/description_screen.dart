import 'package:flutter/material.dart';

import 'package:demon_slayer/models/exports.dart';
import 'package:demon_slayer/widgets/texts/custom_texts.dart';

class DescriptionScreen extends StatefulWidget {
    final Color color;
    final Content character;
  const DescriptionScreen({super.key, required this.character, required this.color});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
      final personajes = widget.character;
    return Scaffold(
      backgroundColor: Color.lerp(widget.color, Colors.white, 0.7),
      appBar: AppBar(backgroundColor: Color.lerp(widget.color, Colors.white, 0.7)),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Hero(
              tag: personajes.img.toString(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  personajes.img.toString(), 
                  fit: BoxFit.fill,
                  height: size.height * .3
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

            SizedBox(height: size.height * 0.02),

            Container(
              clipBehavior: Clip.hardEdge,
              width: size.width,
              height: size.height * 0.541,
              decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)),
              ),
            )

          ],
        ),
      ),
    );
  }
}
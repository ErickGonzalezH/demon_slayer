import 'package:demon_slayer/widgets/texts/custom_texts.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({super.key});

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customText(text: 'IVANIME', fontSize: 28, fontWeight: FontWeight.bold, color: Colors.orange[700]),
            Spacer(),
            Icon( Icons.search, size: 30),
            SizedBox(width: 10),
            Icon( Icons.add_alert_sharp, size: 30),
            SizedBox(width: 10),
            Icon(Icons.menu, size: 36 ),
          ],
        ),
      ),
    );
  }
}
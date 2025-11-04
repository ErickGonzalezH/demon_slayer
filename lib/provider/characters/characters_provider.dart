import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:demon_slayer/models/exports.dart';
import 'package:demon_slayer/constants/constants.dart';

class CharactersProvider with ChangeNotifier {

  CharactersModel? _characters;
  CharactersModel? get characters => _characters;

  Future<void> getcharacters1() async {
    try {
      final response = await http.get(
        Uri.parse('$apiBase/characters?limit=45'),
      );

      if (response.statusCode >= 200 && response.statusCode < 300) {
        log('Response successful: ${response.statusCode}');
        
        final data = json.decode(response.body);
        _characters = CharactersModel.fromJson(data);
        
        log('Characters data loaded successfully');
      } else {
        log('Server error: ${response.statusCode} - ${response.reasonPhrase}');
      }

    } catch (e) {
      log('Error en getcharacters: $e');
    } finally {
      notifyListeners();
    }
  }

}
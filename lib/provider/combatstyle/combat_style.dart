import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:demon_slayer/models/exports.dart';
import 'package:demon_slayer/constants/constants.dart';

class CombatStyleProvider with ChangeNotifier {

  CombatStyleModel? _combatStyle;
  CombatStyleModel? get combatStyle => _combatStyle;

  Future<void> getCombatStyles() async {
    try {
      final response = await http.get(
        Uri.parse('$apiBase/combat-styles?limit=39'),
      );

      if (response.statusCode >= 200 && response.statusCode < 300) {
        log('Response successful: ${response.statusCode}');
        
        final data = json.decode(response.body);
        _combatStyle = CombatStyleModel.fromJson(data);
        
        log('Characters data loaded successfully');
      } else {
        log('Server error: ${response.statusCode} - ${response.reasonPhrase}');
      }

    } catch (e) {
      log('Error en getCombatStyles: $e');
    } finally {
      notifyListeners();
    }
  }

}
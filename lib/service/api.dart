import 'dart:convert';

import 'package:willow/models/consultation.dart';
import 'package:flutter/services.dart' as rootBundle;

class Api {
  Future<List<Consultation>> getConsultation() async {
    try {
      await Future.delayed(Duration(seconds: 3));
      final jsonDate = await rootBundle.rootBundle
          .loadString('lib/json_file/consultation.json');
      final list = json.decode(jsonDate) as List;
      return list.map((e) => Consultation.fromJson(e)).toList();
    } catch (e) {
      print(e);
      return [];
    }
  }
}

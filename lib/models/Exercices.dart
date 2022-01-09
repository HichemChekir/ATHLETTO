import 'package:flutter/material.dart';
import 'package:http/http.dart';

Future<List<Exercice>> fetchExerciceBodyPart({
  String bodyPart = '',
}) async {
  Map<String, String> headers = {
    'X-RapidAPI-Host': 'exercisedb.p.rapidapi.com',
    'X-RapidAPI-Key': '44d1797afcmshd892b9878008c02p1ff488jsnb519dab33a0d'
  };
  var response = await get(
      Uri.parse('https://exercisedb.p.rapidapi.com/exercises/bodyPart/$bodyPart'),
      headers: headers);
}

class Exercice {
  final String bodyPart, equipment, gitUrl, ID, name, target;

  Exercice(this.bodyPart, this.equipment, this.gitUrl, this.ID, this.name,
      this.target);
}

import 'dart:convert';
import 'allExercices.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

Future<List<Exercice>> fetchExerciceBodyPart({
  String bodyPart = '',
}) async {
  Map<String, String> headers = {
    'X-RapidAPI-Host': 'exercisedb.p.rapidapi.com',
    'X-RapidAPI-Key': 'key'
  };
  var response = await get(
      Uri.parse(
          'https://exercisedb.p.rapidapi.com/exercises/bodyPart/$bodyPart'),
      headers: headers);
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    List jsonResponse = jsonDecode(response.body);
    print(jsonResponse);
    return jsonResponse.map((offer) => new Exercice.fromJson(offer)).toList();
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load data');
  }
}


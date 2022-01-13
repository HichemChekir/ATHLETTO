import 'dart:convert';
import 'package:athletto/screens/auth/secrets.dart';
import 'package:flutter_config/flutter_config.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'allExercices.dart';

Future<List<Exercice>> fetchExercicebyname({
  String name = '',
}) async {
  Map<String, String> headers = {
    'X-RapidAPI-Host': 'exercisedb.p.rapidapi.com',
    'X-RapidAPI-Key': API_Key,
  };
  var response = await get(
      Uri.parse('https://exercisedb.p.rapidapi.com/exercises/name/$name'),
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

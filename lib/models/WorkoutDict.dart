import 'package:athletto/models/allExercices.dart';
import 'package:flutter/material.dart';
import '../screens/other/workouts_page1.dart';
import '../models/ExerciceByName.dart';
final String name = '';



Map<String, List<CartItem>> workout_routines = {
  'Workout1': [
    CartItem(
      exerciseName: 'bench Press',
      NumberSets: 4,
      NumberReps: 12,
      exerciseImage: url('barbell bench press')
    ),
    CartItem(
      exerciseName: 'okds',
      NumberSets: 4,
      NumberReps: 12,
    ),
    CartItem(
      exerciseName: 'okds',
      NumberSets: 4,
      NumberReps: 12,
    )
  ]
};

String url(String name){ 
  String exerciceUrl;
  FutureBuilder<List<Exercice>>(
    future: fetchExercicebyname(name: name),
      builder: (context, snapshot){
        if (snapshot.hasData){
          exerciceUrl =  snapshot.data[0].gifUrl;
        }
      },
    );
  return exerciceUrl;
}
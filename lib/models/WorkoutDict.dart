import 'package:athletto/models/allExercices.dart';
import 'package:flutter/material.dart';
import '../screens/other/workouts_page1.dart';
import '../models/ExerciceByName.dart';
final String name = '';



Map<String, List<CartItem>> workout_routines = {
  'Echauffement': [
    CartItem(
      exerciseName: 'Jumping Jacks',
      NumberSets: 4,
      NumberReps: 10,
      exerciseImage: url('Jumping Jacks')
    ),
    CartItem(
      exerciseName: 'Rotation de bras vers l’avant',
      NumberSets: 4,
      NumberReps: 10,
    ),
    CartItem(
      exerciseName: 'Rotation du bassin',
      NumberSets: 4,
      NumberReps: 12,
    ),
    CartItem(
      exerciseName: 'Relevé de genoux',
      NumberSets: 4,
      NumberReps: 10,
    ),
    CartItem(
      exerciseName: 'Talons-fesses',
      NumberSets: 4,
      NumberReps: 10,
    ),
  
  ],
  'Pectoraux-Epaules': [
    CartItem(
      exerciseName: 'archer push up',
      NumberSets: 3,
      NumberReps: 10,
      exerciseImage: url('archer push up')
    ),
    CartItem(
      exerciseName: 'dumbbell bench press',
      NumberSets: 3,
      NumberReps: 10,
      exerciseImage: url('dumbbell bench press'),
    ),
    CartItem(
      exerciseName: 'Écarté couché avec haltères ',
      NumberSets: 2,
      NumberReps: 10,
    ),
    CartItem(
      exerciseName: 'Développé assis avec haltères ',
      NumberSets: 3,
      NumberReps: 10,
    ),
    CartItem(
      exerciseName: 'Oiseau',
      NumberSets: 2,
      NumberReps: 10,
    ),
     CartItem(
      exerciseName: 'Crunch',
      NumberSets: 3,
      NumberReps: 10,
    ),
     CartItem(
      exerciseName: 'Flexion latérale avec haltère',
      NumberSets: 3,
      NumberReps: 10,
    ),
  ],
  'Biceps-Jambes': [
    CartItem(
      exerciseName: 'Curl rotation debout avec haltères',
      NumberSets: 3,
      NumberReps: 10,
      exerciseImage: url('Curl rotation debout avec haltères')
    ),
    CartItem(
      exerciseName: 'Curl prise marteau debout avec haltères',
      NumberSets: 3,
      NumberReps: 10,
    ),
    CartItem(
      exerciseName: 'Squat avec haltères ',
      NumberSets: 3,
      NumberReps: 11,
    ),
    CartItem(
      exerciseName: 'Fentes avec haltères ',
      NumberSets: 2,
      NumberReps: 10,
    ),
    CartItem(
      exerciseName: 'Soulevé de terre jambes tendues aux haltères',
      NumberSets: 3,
      NumberReps: 10,
    ),
     CartItem(
      exerciseName: 'Extension des hanches au sol au poid du corps (glute bridge)',
      NumberSets: 3,
      NumberReps: 10,
    ),
     CartItem(
      exerciseName: 'Planche',
      NumberSets: 4,
      NumberReps: 10,
    ),
  
  ],
  'Dos – Triceps – Rappel* Pectoraux': [
    CartItem(
      exerciseName: 'Tractions en pronation écartement moyen',
      NumberSets: 3,
      NumberReps: 10,
      exerciseImage: url('Tractions en pronation écartement moyen')
    ),
    CartItem(
      exerciseName: 'Rowing un bras avec haltère ',
      NumberSets: 3,
      NumberReps: 10,
    ),
    CartItem(
      exerciseName: 'Skullcrusher avec haltères ',
      NumberSets: 3,
      NumberReps: 11,
    ),
    CartItem(
      exerciseName: 'Dips entre deux bancs ',
      NumberSets: 2,
      NumberReps: 10,
    ),
    CartItem(
      exerciseName: 'Kickback',
      NumberSets: 3,
      NumberReps: 10,
    ),
     CartItem(
      exerciseName: 'Pull-over',
      NumberSets: 3,
      NumberReps: 10,
    ),
     CartItem(
      exerciseName: 'Crunch inversé',
      NumberSets: 4,
      NumberReps: 10,
    ),
  
  ],
  'Pectoraux – Épaules – Triceps': [
    CartItem(
      exerciseName: 'Pompes',
      NumberSets: 3,
      NumberReps: 10,
      exerciseImage: url('Pompes')
    ),
    CartItem(
      exerciseName: 'Développé couché avec haltères ',
      NumberSets: 3,
      NumberReps: 10,
    ),
    CartItem(
      exerciseName: 'Écarté couché avec haltères ',
      NumberSets: 3,
      NumberReps: 11,
    ),
    CartItem(
      exerciseName: 'Développé assis avec haltères ',
      NumberSets: 2,
      NumberReps: 10,
    ),
    CartItem(
      exerciseName: 'Oiseau',
      NumberSets: 3,
      NumberReps: 10,
    ),
     CartItem(
      exerciseName: 'Kickback',
      NumberSets: 3,
      NumberReps: 10,
    ),
     CartItem(
      exerciseName: 'Crunch inversé',
      NumberSets: 4,
      NumberReps: 10,
    ),
  
  ],
  'Dos – Biceps – Jambes': [
    CartItem(
      exerciseName: 'Tractions en pronation écartement moyen',
      NumberSets: 3,
      NumberReps: 10,
      exerciseImage: url('Tractions en pronation écartement moyen')
    ),
    CartItem(
      exerciseName: 'Rowing un bras avec haltère ',
      NumberSets: 3,
      NumberReps: 10,
    ),
    CartItem(
      exerciseName: 'Curl rotation debout avec haltères ',
      NumberSets: 3,
      NumberReps: 11,
    ),
    CartItem(
      exerciseName: 'Squat avec haltères ',
      NumberSets: 2,
      NumberReps: 10,
    ),
    CartItem(
      exerciseName: 'Fentes avec haltères',
      NumberSets: 3,
      NumberReps: 10,
    ),
     CartItem(
      exerciseName: 'Soulevé de terre jambes tendues aux haltères',
      NumberSets: 3,
      NumberReps: 10,
    ),
     CartItem(
      exerciseName: 'Extension des hanches au sol au poid du corps (glute bridge)',
      NumberSets: 4,
      NumberReps: 10,
    ),
    CartItem(
      exerciseName: 'Planche',
      NumberSets: 4,
      NumberReps: 10,
    ),
  
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
import 'package:flutter/material.dart';
import 'package:quizapp/screens/login_screen.dart';
import 'package:quizapp/screens/opening_screen.dart';
import 'package:quizapp/screens/category_screen.dart';
import 'package:quizapp/screens/quiz_screen.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';

import 'Screens/quiz_screen.dart';

void main() {
  runApp(quizApp());
}

class quizApp extends StatelessWidget {
  const quizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: categoryscreen(),
    );
    
  }
}
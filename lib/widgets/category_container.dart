import 'package:flutter/material.dart';
import 'package:quizapp/Global/quiz_data.dart';
import '../screens/quiz_screen.dart';

class CategoryContainer extends StatelessWidget {
 
  final int index;
  CategoryContainer({
    required this.index,

  });
  List quizname = ["Sports", "History", "IQ","programming","math","science"];
  List quizcolor = [
    Color.fromARGB(255, 23, 33, 92),
    Color.fromARGB(255, 23, 33, 92),
    Color.fromARGB(255, 23, 33, 92),
    Color.fromARGB(255, 23, 33, 92),
    Color.fromARGB(255, 23, 33, 92),
    Color.fromARGB(255, 23, 33, 92),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => QuizScreen(categoryMap: database[index])
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: quizcolor[index],
              border: Border.all(width: 1, color: Colors.white)),
          child: Center(
            child: Text(
              quizname[index],
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quizapp/Global/quiz_data.dart';
import '../screens/quiz_screen.dart';

class CategoryContainer extends StatelessWidget {
  final int index;

  CategoryContainer({
    required this.index,
  });

  List<String> quizname = [
    "Sports",
    "History",
    "IQ",
    "Programming",
    "Math",
    "Science"
  ];
  List<Color> quizcolor = [
    Color.fromARGB(255, 23, 33, 92),
    Color.fromARGB(255, 23, 33, 92),
    Color.fromARGB(255, 23, 33, 92),
    Color.fromARGB(255, 23, 33, 92),
    Color.fromARGB(255, 23, 33, 92),
    Color.fromARGB(255, 23, 33, 92),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            elevation: 4.0,
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        QuizScreen(categoryMap: database[index]),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
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
            ),
          ),
        ),
        SizedBox(width: 10.0),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quizapp/Global/quiz_data.dart';
import '../screens/quiz_screen.dart';

class CategoryContainer extends StatelessWidget {
  final int index;

  CategoryContainer({
    required this.index,
  });

  List<String> quizImages = [
     "images/icons8-soccer-ball-96.png",
    "images/icons8-ankh-100.png",
    "images/icons8-intellect-100.png",
    "images/icons8-programming-100.png",
    "images/icons8-sigma-96.png",
    "images/icons8-biotech-96.png"
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
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Card(
              elevation: 0.0,
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
                    color: Color.fromARGB(17, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Image.asset(
                        quizImages[index],
                        width: 64.0, 
                        height: 64.0, 
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 10.0),
        ],
      ),
    );
  }
}

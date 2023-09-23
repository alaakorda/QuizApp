import 'package:flutter/material.dart';
import 'package:quizapp/Global/quiz_data.dart';
import 'package:quizapp/screens/score_screen.dart';

const Color bcckground = Color(0xFF1A3464);

class QuizScreen extends StatefulWidget {
  final Map categoryMap;
  QuizScreen({super.key, required this.categoryMap});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int indx = 0;
  int totalscore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bcckground,
      appBar: AppBar(
        backgroundColor: widget.categoryMap["color"],
        title: Text(widget.categoryMap["categoryName"],),
        leading: Center(
          child: Text("${indx + 1}/${(widget.categoryMap["data"] as List).length}"),
        ),
        // timericon
        actions: const [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 20),
            child: Icon(Icons.access_alarm),
          ),
        ],
      //  shadowColor: Colors.transparent,
      ),
      body: Container(
        alignment: Alignment.centerLeft,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
            // Text("Question 1"),
            children: [
              Text(
                widget.categoryMap["data"][indx]["question"],
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              for (int i = 0;
                  i <
                      (widget.categoryMap["data"][indx]["answers"] as List)
                          .length;
                  i++)
                ElevatedButton(
                  // width of buttom

                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF1A3464)),

                  onPressed: () {
                    if (indx <
                        (widget.categoryMap["data"] as List).length - 1) {
                      setState(() {
                        totalscore += widget.categoryMap["data"][indx]
                            ["answers"][i]["score"] as int;
                        indx++;
                        
                      });
                    } else {
                      totalscore += widget.categoryMap["data"][indx]
                            ["answers"][i]["score"] as int;
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                 ScoreScreen(
                                  totalnumqus: indx+1,
                                totalscore: totalscore,
                                ),),
                      );
                    }
                  },
                  child: Text(
                    widget.categoryMap["data"][indx]["answers"][i]["ans"],
                    style: TextStyle(color: Color.fromARGB(255, 244, 247, 252), fontSize: 15),
                  ),
                ),
              SizedBox(
                height: 10,
              ),
            ]
            // next button
            ),
      ),
    );
  }
}

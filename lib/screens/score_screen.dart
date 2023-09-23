import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quizapp/Global/quiz_data.dart';
import 'package:quizapp/Global/quiz_data.dart';
import 'package:quizapp/screens/opening_screen.dart';

import '../Global/quiz_data.dart';
//import 'package:lottie/lottie.dart';
//statefullwidget

class ScoreScreen extends StatefulWidget {
  final int totalscore;
  final int totalnumqus;
  ScoreScreen({required this.totalnumqus, required this.totalscore});
  
  

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  //late TextEditingController userNameController;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A3464),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.totalscore == widget.totalnumqus)
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(
                  child: Lottie.asset('assets/animation_llt17a8c.json'),
                ),
              ),


              
            Center(
              child: Text(
                'Congrate ${userNameController.text} your Score is ${widget.totalscore} / ${widget.totalnumqus}',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => OpenScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1A3464),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text('Play Again'),
            )
          ],
        ),
      ),
    );
  }
}

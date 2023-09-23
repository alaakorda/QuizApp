import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/screens/login_screen.dart';

class OpenScreen extends StatefulWidget {
  const OpenScreen({Key? key}) : super(key: key);

  @override
  _OpenScreenState createState() => _OpenScreenState();
}

class _OpenScreenState extends State<OpenScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _opacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Start the animation after a delay
    Future.delayed(Duration(seconds: 2), () {
      _controller.forward().then((value) {
        // Animation is complete, navigate to the login screen
        _navigateToLoginScreen();
      });
    });
  }

  void _navigateToLoginScreen() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => login_screen(), // Replace with your LoginScreen widget
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
        child: Center(
          child: AnimatedBuilder(
            animation: _opacityAnimation,
            builder: (context, child) {
              return Opacity(
                opacity: _opacityAnimation.value,
                child: child,
              );
            },
            child: Text(
              "Quiz",
              style: GoogleFonts.dmSans(
                textStyle: TextStyle(
                  fontSize: 70,
                  color: Color.fromARGB(255, 1, 226, 254),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 21, 25, 52),
              Color.fromARGB(255, 25, 30, 65),
              Color.fromARGB(255, 12, 117, 146),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}

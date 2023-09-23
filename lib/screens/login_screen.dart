import 'package:flutter/material.dart';
import 'package:quizapp/Global/quiz_data.dart';
import 'package:quizapp/screens/category_screen.dart';

class login_screen extends StatefulWidget {
  login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Exit App?'),
                content: Text('Do you want to exit the app?'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text('No'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: Text('Yes'),
                  ),
                ],
              ),
            ) ??
            false;
      },
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 21, 25, 52),
        resizeToAvoidBottomInset: false,
        body: Form(
          key: formkey,
          child: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: <Widget>[
              Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.0,
                              ),
                              Center(
                                child: Text(
                                  "",
                                  style: TextStyle(
                                      fontSize: 30,
                                    
                                      fontWeight: FontWeight.bold),
                                     
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.24,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, right: 30),
                                child: TextFormField(
                                  controller: userNameController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "username is required";
                                    } else if (value.length < 8 ||
                                        value[0] != value[0].toUpperCase()) {
                                      return "username is not valid";
                                    } else {
                                      return null;
                                    }
                                  },
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white70,
                                    prefixIcon: Icon(Icons.person),
                                    hintText: "UserName",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.054,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, right: 30),
                                child: TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Email is required";
                                    } else if (!value.contains("@") ||
                                        !value.contains(".com")) {
                                      return "Email is not valid";
                                    }
                                    ;
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white70,
                                    prefixIcon: Icon(Icons.email),
                                    hintText: "Email",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.054,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, right: 30),
                                child: TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Password is required';
                                    } else if (value.length <= 9) {
                                      return 'Password must be at least 10 characters long';
                                    } else if (!RegExp(r'[A-Z]')
                                        .hasMatch(value)) {
                                      return 'Password must contain at least one uppercase letter';
                                    } else if (!RegExp(r'[a-z]')
                                        .hasMatch(value)) {
                                      return 'Password must contain at least one lowercase letter';
                                    } else if (!RegExp(r'[0-9]')
                                        .hasMatch(value)) {
                                      return 'Password must contain at least one number';
                                    } else if (!RegExp(
                                            r'[!@#$%^&*(),.?":{}|<>_]')
                                        .hasMatch(value)) {
                                      return 'Password must contain at least one special character';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white70,
                                    prefixIcon: Icon(Icons.password),
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  obscureText: true,
                                ),
                              ),
                                SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  if (formkey.currentState!.validate()) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => categoryscreen(),
                                      ),
                                    );
                                  } else {}
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 146, 149, 150),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  width:
                                      MediaQuery.of(context).size.width * 0.42,
                                  child: Center(
                                    child: Text(
                                      'Continue',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 23,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../Widgets/category_container.dart';

class categoryscreen extends StatelessWidget {
 categoryscreen();

@override
Widget build(BuildContext context) {
return Scaffold(
  body: Column(
    children: [
     for(int i = 0; i < 6; i++)
     CategoryContainer(
      index: i,
     )
    ],
  ),

);
}
}
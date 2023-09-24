import 'package:flutter/material.dart';
import '../Widgets/category_container.dart';

class categoryscreen extends StatelessWidget {
 categoryscreen();

@override
Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: Color.fromARGB(255, 21, 25, 52),
  body:Padding(
    padding: const EdgeInsets.only(top: 140.0,left: 10),
    child: Center(
      
      child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, 
               crossAxisSpacing: 3,
                    mainAxisSpacing: 10,
            ),
            itemCount: 6, 
            itemBuilder: (context, index) {
              return CategoryContainer(index: index);
            },
          ),
    ),
  ),

);
}
}
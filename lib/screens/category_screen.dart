import 'package:flutter/material.dart';
import '../Widgets/category_container.dart';

class categoryscreen extends StatelessWidget {
 categoryscreen();

@override
Widget build(BuildContext context) {
return Scaffold(
  
appBar: AppBar(
  automaticallyImplyLeading: false,
        title: Center(
          
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text("Categories",style: TextStyle(fontSize: 30),),
          ),
        ),
       backgroundColor: Colors.transparent,
       elevation: 0,
),
  backgroundColor: Color.fromARGB(255, 21, 25, 52),
  body:Container(
    child: Padding(
      padding: const EdgeInsets.only(top: 100.0,left: 10),
      
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
  ),

);
}
}
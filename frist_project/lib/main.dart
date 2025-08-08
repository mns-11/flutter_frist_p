import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor:const Color.fromARGB(128, 155, 17, 17),

        title: Text("flutter 101")
        
        ,),
        
      backgroundColor:const Color.fromARGB(255, 255, 250, 254),
      body:SafeArea(
        child: Column(children: [
          //Text("body"),
          //Text("mansoor"),
          //Text("mansooooooor"),
          
          Row(
            
            children:[
            
            Text("mansooor"),
            Text("ahmed"),
            
          ],)
          
          ],
          
          
          )


          ),
       ) //safarea تنزل النص لداخل الصفحة
      ;
      
  }
}

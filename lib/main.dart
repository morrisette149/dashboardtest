import 'package:flutter/material.dart';
import 'bottomnavi.dart';
import 'grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),

          //body: SingleChildScrollView(
            body: Column( //column ingat! bc children
          
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(10),
                  child: const Text('Hello, Moris',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
                SizedBox(height: 30),//set the space between test and the grid
                Expanded(child: Grid(),),
                
                Expanded(child: Productivity(),),
                Expanded(child: MainPage(),),
            ],),
          ),
      
      );
  }
}
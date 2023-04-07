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
                //height: 50,
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(20),
                  child: const Text('Hi,Moris',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            
                SizedBox(height: 410, child: Grid(),),//set the space between grid and productivity
                //Expanded(child: Grid(),),
                SizedBox(height: 250, child: Productivity(),),//productivity and product
                //Expanded(child: Productivity(),),
                //SizedBox(height: 100, child: Product(),),//product and mainpage
                //Expanded(child: Product(),),
                
                Expanded(child: MainPage(),),
            ],),
          ),
      
      );
  }
}
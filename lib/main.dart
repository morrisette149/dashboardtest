import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
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
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Dashboard'),
            leading: Icon(Icons.logout_outlined), //icon at appbar
          ),
      
            //body: SingleChildScrollView(
              body: Column( //column ingat! bc children
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.fromLTRB(20, 10, 50, 0),
                      child: const Text('Hi,Moris',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),),
                  ),
              
                  CupertinoTabBar(
                  items: [
                    
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.person_2),
                      label: 'All',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.person),
                      label: 'Male',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.person),
                      label: 'Female',
                    ),
                  ],
                  border: Border(
                    top: BorderSide.none,
                    bottom: BorderSide.none,
                    left: BorderSide.none,
                    right: BorderSide.none,
                    //BorderRadius: BorderRadius.circular(30.0),
                  ),
                ),

                
                    SizedBox(height: 400, child: Grid(),),//set the space between grid and productivity
                    //Expanded(child: Grid(),),
                    SizedBox(height: 100, child: Productivity(),),//productivity and product
                    //Expanded(child: Productivity(),),
                    //SizedBox(height: 100, child: Product(),),//product and mainpage
                    //Expanded(child: Product(),),
                    
                    Expanded(child: MainPage(),),
                ],),
            
            ),
      ),
      
      );
  }
}
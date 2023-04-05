import 'package:flutter/material.dart';

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

          body: SingleChildScrollView(
            child: Column( //column ingat! bc children
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: const Text('Hello, Moris',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
                SizedBox(height: 30),//set the space between test and the grid
                Expanded(child: Grid(),),
                Expanded(child: MainPage(),),
            ],),
          ),
      
      ),
    );
  }
}

//grid
class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(physics: NeverScrollableScrollPhysics (),
      crossAxisCount: 2, //will have 2 columns and arrange in rows with 2 items
      padding: EdgeInsets.symmetric(horizontal: 20),
    
      childAspectRatio: 1.00,
      mainAxisSpacing: 50, // set the space vertically
      crossAxisSpacing: 50, // set the space horinzontally
      children: [

        Container(
          width: 30,
          height: 30,
          //to decorate the grid
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(10),

          ),

          child: const Text('Financial Freedom',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          )),
        ),

        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          
          child: const Text('Productivity',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          )
          ),
        ),

        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(10),
          ),
          
          child: const Text('Feeling Well',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          )
          ),
        ),

        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          
          child: const Text('Personal life',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          )
          ),
        ),
      ],
    );
  }
}

//bottom navigation
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        iconSize: 18,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        elevation: 5,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: "Status",
            icon: Icon(Icons.autorenew_rounded),
          ),
          BottomNavigationBarItem(
            label: "Notifications",
            icon: Icon(Icons.message_rounded),
          ),
          BottomNavigationBarItem(
            label: "Account",
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}
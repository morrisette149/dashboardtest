
//bottom navigation
import 'package:dashboard/main.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //declare a variable to navigate user to another page
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
    //navigate each button to other pages
    switch (currentIndex) {
      //home
      case 0:
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyApp()),
        );
      break;
      //book
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Book()),
        );
      break;
      //notifications
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Notifications()),
          );
      break;
      //schedule
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Schedule()),
          );
      break;
      //account
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Account()),
          );
      break;
    }//end of switch
  }//void

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        onTap: onTap,
        currentIndex: currentIndex,
        iconSize: 18,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        elevation: 5,
        items: const [

          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.home_filled),
            tooltip: "Home", //display msg when it is long-pressed
          ),

          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.menu_book_rounded),
            tooltip: "Book",
            ),

          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.messenger_outline_rounded),
            tooltip: "Message",
          ),
          
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.pie_chart_outline_rounded),
            tooltip: "Schedule",
          ),

          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.person_2_outlined),
            tooltip: "Account",
          ),
        ],
      ),
    );
  }
}

//book
class Book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('List of book'),
    );
  }
}

//notifications
class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('Notifications'),
      );
  }
}

//status
class Schedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('Schedule'),
    );
  }
}

//account
class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('Account'),
    );
  }
}
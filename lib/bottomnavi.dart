
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
      //status
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StatusPage()),
        );
      break;
      //notifications
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Notifications()),
          );
      break;
      //account
      case 3:
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
            label: "Home",
            icon: Icon(Icons.home_filled),
            tooltip: "Home", //display msg when it is long-pressed
          ),
          BottomNavigationBarItem(
            label: "Status",
            icon: Icon(Icons.autorenew_rounded),
            tooltip: "Status",
          ),
          BottomNavigationBarItem(
            label: "Notifications",
            icon: Icon(Icons.message_rounded),
            tooltip: "Notifications",
          ),
          BottomNavigationBarItem(
            label: "Account",
            icon: Icon(Icons.account_circle),
            tooltip: "Account",
          ),
        ],
      ),
    );
  }
}

//status
class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('Status'),
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

//account
class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('Create New Account'),
    );
  }
}
//grid
import 'package:flutter/material.dart';



class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics (),//ensure tht the widget is not scrollable
      crossAxisCount: 2, //will have 2 columns and arrange in rows with 2 items
      padding: EdgeInsets.symmetric(horizontal: 20),
    
      childAspectRatio: 1.2,
      mainAxisSpacing: 50, // set the space vertically
      crossAxisSpacing: 50, // set the space horinzontally
      children: [

        Container(
          padding: EdgeInsets.all(10), // set space in the text
          width: 30,
          height: 30,
          //to decorate the grid
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(15),

          ),

          child: const Text('Financial Freedom',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          )),
        ),

        Container(
          width: 30,
          height: 30,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(15),
          ),
          
          child: const Text('Productivity',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          )
          ),
        ),

        Container(
          width: 30,
          height: 30,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(15),
          ),
          
          child: const Text('Feeling Well',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          )
          ),
        ),

        Container(
          width: 30,
          height: 30,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(15),
          ),
          
          child: const Text('Personal life',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          )
          ),
        ),
      ],
    );
  }
}

//grid ada button
class Productivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 6,
      crossAxisCount: 2,//create a grid with 2 cols
      mainAxisSpacing: 50, // set the space vertically
      crossAxisSpacing: 50, // set the space horinzontally

      children: [
        
        Container(
          //set the space between the container and text
          padding: EdgeInsets.all(10),
          //decoration
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [ //give shadow to the grid
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: () {},
            child: Text('More'),
          ),
        ),
      ],
    );
  }
}
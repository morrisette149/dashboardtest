//grid
import 'package:flutter/material.dart';



class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      //shrinkWrap: true,
      //physics: NeverScrollableScrollPhysics (),//ensure tht the widget is not scrollable
      crossAxisCount: 2, //will have 2 columns and arrange in rows with 2 items
      //maxCrossAxisExtent: 300,
      padding: EdgeInsets.symmetric(horizontal: 20),
      
      //childAspectRatio: 1.2,
      mainAxisSpacing: 40, // set the space vertically
      crossAxisSpacing: 50, // set the space horinzontally
      children: [
        //gesture for finacial freedom
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GridPage()),
              );
          },
          child: Container(
          padding: EdgeInsets.all(10), // set space in the text
          //width: 200,
          height: 200,
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
        ),
        //Productivity
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GridPage()),
              );
          },
          child: Container(
          //width: 200,
          height: 500,
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
        ),
        
        //feeling well
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GridPage()),
              );
          },
          child: Container(
          //width: 200,
          height: 500,
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
        ),
        
        //personal life
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GridPage()),
              );
          },
          child: Container(
          //width: 200,
          height: 500,
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
      crossAxisCount: 1,//create a grid with 1 cols
      mainAxisSpacing: 50, // set the space vertically
      crossAxisSpacing: 50, // set the space horinzontally

      padding: EdgeInsets.symmetric(horizontal: 15),//ato space grid
      
      children: [
        //
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

          child: SingleChildScrollView(
            child: Row(//so tht both text and the button in 1 line
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
              Text('Productivity',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),

              SizedBox(width: 160),

              //Dropdown menu
              DropdownButton<String>(
                items: [

                  DropdownMenuItem(
                    child: Text('Option 1',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    value: 'option1',
                  ),
                  DropdownMenuItem(
                    child: Text('Option 2',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    value: 'option2',
                  ),

                ], 
                onChanged: (String? value){

                },
                hint: Text('More',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                dropdownColor: Colors.blue,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 30,
                underline: Container(), //to remove the underline
                ),
             ],
            ),
          ),
        ),

        //
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

          child: SingleChildScrollView(
            child: Row(//so tht both text and the button in 1 line
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
              Text('Financial Freedom',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),

              SizedBox(width: 120),

              //Dropdown menu
              DropdownButton<String>(
                items: [

                  DropdownMenuItem(
                    child: Text('Option 1',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    value: 'option1',
                  ),
                  DropdownMenuItem(
                    child: Text('Option 2',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    value: 'option2',
                  ),

                ], 
                onChanged: (String? value){

                },
                hint: Text('More',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                dropdownColor: Colors.blue,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 30,
                underline: Container(), //to remove the underline
                ),
             ],
            ),
          ),
        ),

        //
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

          child: SingleChildScrollView(
            child: Row(//so tht both text and the button in 1 line
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
              Text('Feeling Well',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),

              SizedBox(width: 160),

              //Dropdown menu
              DropdownButton<String>(
                items: [

                  DropdownMenuItem(
                    child: Text('Option 1',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    value: 'option1',
                  ),
                  DropdownMenuItem(
                    child: Text('Option 2',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    value: 'option2',
                  ),

                ], 
                onChanged: (String? value){

                },
                hint: Text('More',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                dropdownColor: Colors.blue,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 30,
                underline: Container(), //to remove the underline
                ),
             ],
            ),
          ),
        ),

        //
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

          child: SingleChildScrollView(
            child: Row(//so tht both text and the button in 1 line
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
              Text('Personal Life',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),

              SizedBox(width: 160),

              //Dropdown menu
              DropdownButton<String>(
                items: [

                  DropdownMenuItem(
                    child: Text('Option 1',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    value: 'option1',
                  ),
                  DropdownMenuItem(
                    child: Text('Option 2',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    value: 'option2',
                  ),

                ], 
                onChanged: (String? value){

                },
                hint: Text('More',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                dropdownColor: Colors.blue,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 30,
                underline: Container(), //to remove the underline
                ),
             ],
            ),
          ),
        ),

      ],
    );
  }
}

//grid page
class GridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('Hello'),
      );
  }
}

//grid ada button
class Product extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 6,
      crossAxisCount: 1,//create a grid with 1 cols
      mainAxisSpacing: 50, // set the space vertically
      crossAxisSpacing: 50, // set the space horinzontally

      padding: EdgeInsets.symmetric(horizontal: 15),
      
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
          child: SingleChildScrollView(
            child: Row(//so tht both text and the button in 1 line
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
              Text('Productivity',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),

              SizedBox(width: 190),

              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context, 
                    builder: (BuildContext context) {
                      return Drawer(
                        child: ListView(
                          padding: EdgeInsets.zero,
                          children: <Widget>[
                            const DrawerHeader(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                              ),
                              child: Text('More',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),),),

                              ListTile(
                                title: const Text('Option 1'),
                                onTap: () {},
                              ),

                              ListTile(
                                title: const Text('Option 2'),
                                onTap: () {},
                              ),

                          ],
                        ),
                      );
                    },);
                }, 
               child: const Text(
                'More',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
               ),                
                ),
             ],
            ),
          ),
        ),


      ],
    );
  }
}
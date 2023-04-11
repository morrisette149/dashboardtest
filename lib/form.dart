//navigate grid to form page (trying)
import 'package:flutter/material.dart';

class FormFinancial extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}
class _FormState extends State<FormFinancial> {
  @override
  Widget build(BuildContext context) {
    //define a variable to store the selected dropdown option
    String? _selectedOption;

    //define a variable to store the user input
    String _input = '';

    return Material(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[

            //container for header
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              child: const Text('Form',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
            ),

            //container for user input
            Container(
              alignment: Alignment.center,
              padding:  const EdgeInsets.all(16),
              //TextFormField is needed for form
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your name',
                  labelText: 'Full name',
                ),
                validator: (value) {
                    if(value == null) {
                      return 'This field is required!';
                    }
                    return null;
                  },
              ),

            ),

            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  DropdownButtonFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Monthly Income',
                      hintText: 'Choose the range of your monthly income',
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 'range',
                        child: Text('<= RM 1500'),
                      ),
                      DropdownMenuItem(
                        value: 'rangeb',
                        child: Text('RM 1500 < RM 3000'),
                      ),
                      DropdownMenuItem(
                        value: 'rangec',
                        child: Text('>= RM 3000'),
                      ),
                    ],
                    onChanged: (value) {
                      // Do something with the selected value
                    },
                  ),
                ],
              ),
              ),

            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  DropdownButtonFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Monthly Expenses'
                    ),
                    value: _selectedOption,
                    items: const [

                      DropdownMenuItem(
                        value: 'Bills',
                        child: Text('Bills'),
                        ),

                      DropdownMenuItem(
                        value: 'Foods',
                        child: Text('Foods'),
                        ),

                      DropdownMenuItem(
                        value: 'Shopping',
                        child: Text('Shopping'),
                        ),
                        
                    ], 
                    onChanged: (String? value) {
                      setState(() {
                        _selectedOption = value;
                        _input = '';
                      });
                    },
                    ),

                    //input field for the selected option
                    if (_selectedOption == 'Bills')
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your monthly expenses for bills',
                        labelText: 'Bills',
                      ),
                    onChanged: (String value) {
                      setState(() {
                        _input = value;
                        });
                      }, 
                    ),

                    if (_selectedOption == 'Foods')
                    TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter your monthly expenses for foods',
                          labelText: 'Foods',
                        ),
                        onChanged: (String value) {
                          setState(() {
                            _input = value;
                          });
                        },
                    ),

                    if (_selectedOption == 'Shopping')
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your monthly expenses for shopping',
                        labelText: 'Shopping',
                      ),
                      onChanged: (String value) {
                        setState(() {
                          _input =value;
                        });
                      },
                    ),
                ],
              ), 
            ),

            Container(
                padding: const EdgeInsets.all(16),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your monthly savings',
                    labelText: 'Monthly Savings',
                  ),
                  validator: (value) {
                    if(value == null) {
                      return 'This field is required!';
                    }
                    return null;
                  },
                ),
              ),
          
             Container(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: ElevatedButton(
                onPressed: () {
                  // Add your desired functionality here
                  print('Button pressed!');
                },
                child: const Text('Save',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),

          ],
        ),
        ),
    );
  }
}
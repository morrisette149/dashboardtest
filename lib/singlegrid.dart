import 'package:flutter/material.dart';

class NewGrid extends StatefulWidget {
  @override
  _SingleGrid createState() => _SingleGrid();
}

class _SingleGrid extends State<NewGrid> {
  String _selectedOption = 'Option 1';
  List<String> _option = ['Option 1', 'Option 2', 'Option 3'];
  List<String> _gridItems = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton(
          value: _selectedOption,
          onChanged: (String? newValue) {
            setState(() {
              _selectedOption = newValue!;
            });
          },
          items: _option.map((String value) => DropdownMenuItem<String>(
            value: value,
            child: Text('testing'),)).toList(),
          ),
      ],
    );
  }
}
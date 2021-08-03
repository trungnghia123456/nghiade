/// Flutter code sample for RadioListTile

// ![RadioListTile sample](https://flutter.github.io/assets-for-api-docs/assets/material/radio_list_tile.png)
//
// This widget shows a pair of radio buttons that control the `_character`
// field. The field is of the type `SingingCharacter`, an enum.

import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  const CustomRadio({Key? key}) : super(key: key);

  @override
  _CustomRadioState createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        GestureDetector(
          onTap: () => setState(() => _value = 0),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: _value == 0 ? Colors.blue : Colors.white,
              border: Border.all(width: 1, color: Colors.blue),
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(30), right: Radius.circular(30)),
            ),
            height: 50,
            width: 100,
            child: Text(
              'UI/UX',
              style: TextStyle(color: _value == 0 ? Colors.white : Colors.blue),
            ),
          ),
        ),
        SizedBox(width: 20),
        GestureDetector(
          onTap: () => setState(() => _value = 1),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: _value == 1 ? Colors.blue : Colors.white,
              border: Border.all(width: 1, color: Colors.blue),
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(30), right: Radius.circular(30)),
            ),
            height: 50,
            width: 100,
            child: Text(
              'Coding',
              style: TextStyle(color: _value == 1 ? Colors.white : Colors.blue),
            ),
          ),
        ),
        SizedBox(width: 20),
        GestureDetector(
          onTap: () => setState(() => _value = 2),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: _value == 2 ? Colors.blue : Colors.white,
              border: Border.all(width: 1, color: Colors.blue),
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(30), right: Radius.circular(30)),
            ),
            height: 50,
            width: 100,
            child: Text(
              'Basic UI',
              style: TextStyle(color: _value == 2 ? Colors.white : Colors.blue),
            ),
          ),
        ),
      ],
    ));
  }
}

import 'package:flutter/material.dart';

class SwitchElem extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<SwitchElem> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isSwitched,
      onChanged: (value) {
        setState(() {
          isSwitched = value;
          print(isSwitched);
        });
      },
      activeTrackColor: Colors.yellow,
      activeColor: Colors.orangeAccent,
    );
  }
}

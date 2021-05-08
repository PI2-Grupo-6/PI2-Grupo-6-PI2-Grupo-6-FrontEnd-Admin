import 'package:flutter/material.dart';

class SwitchElem extends StatefulWidget {
  bool status;
  SwitchElem(this.status);

  @override
  _State createState() => _State();
}

class _State extends State<SwitchElem> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: widget.status,
      onChanged: (value) {
        setState(() {
          widget.status = value;
        });
      },
      activeTrackColor: Colors.yellow,
      activeColor: Colors.orangeAccent,
    );
  }
}

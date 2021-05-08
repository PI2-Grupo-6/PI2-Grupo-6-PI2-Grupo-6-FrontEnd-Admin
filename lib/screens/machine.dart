import 'package:flutter/material.dart';
import 'package:food_app/model/machines_repository.dart';
import 'package:food_app/utils/constants.dart';

class MachinePage extends StatefulWidget {
  @override
  _MachinePageState createState() => _MachinePageState();
}

class _MachinePageState extends State<MachinePage> {
  bool _status = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight) / 2;
    final double itemWidth = size.width / 1.5;

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/LogoAmarela.png',
          height: 67,
          width: 155,
          fit: BoxFit.fill,
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Máquina1",
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.start,
                    ),
                    new Spacer(),
                    Text(
                      _status == true ? 'Ativada' : 'Desativada',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Switch(
                      value: _status,
                      onChanged: (bool newValue) {
                        setState(() {
                          _status = newValue;
                        });
                      },
                      activeTrackColor: Colors.yellow,
                      activeColor: Colors.orangeAccent,
                    ),
                  ]),
              Expanded(
                child: ListView.builder(
                  // scrollDirection: Axis.horizontal,
                  itemCount: 16,
                  itemBuilder: (context, index) {
                    return MachineCard(index);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MachineCard extends StatelessWidget {
  final _recipientNameController = TextEditingController();
  final _foodNameController = TextEditingController();
  final int index;
  MachineCard(
    this.index, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      height: 220,
      width: double.maxFinite,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: 30, width: 30),
            Text(
              "Recipient:${this.index}",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 30, width: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  child: AccentColorOverride(
                    color: kRapidaoBrown900,
                    child: TextField(
                      controller: _recipientNameController,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                      ),
                      obscureText: true,
                    ),
                  ),
                ),
                SizedBox(width: 30),
                Expanded(
                  child: AccentColorOverride(
                    color: kRapidaoBrown900,
                    child: TextField(
                      controller: _recipientNameController,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                      ),
                      obscureText: true,
                    ),
                  ),
                ),
                SizedBox(height: 30, width: 30),
                _DropDownFood(),
                SizedBox(height: 30, width: 30),
                _DropDownBocal(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AccentColorOverride extends StatelessWidget {
  const AccentColorOverride({Key key, this.color, this.child})
      : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      child: child,
      data: Theme.of(context).copyWith(
        accentColor: color,
        brightness: Brightness.dark,
      ),
    );
  }
}

class _DropDownFood extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<_DropDownFood> {
  String dropdownValue = 'tipo de alimento';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['tipo de alimento', 'One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class _DropDownBocal extends StatefulWidget {
  @override
  _DropDownBocalState createState() => _DropDownBocalState();
}

class _DropDownBocalState extends State<_DropDownBocal> {
  String dropdownValue = 'tipo de bocal';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['tipo de bocal', 'One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

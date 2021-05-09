import 'package:flutter/material.dart';
import 'package:food_app/utils/constants.dart';
import 'package:food_app/widgets/machineCard.dart';

class MachineEditPage extends StatefulWidget {
  @override
  _MachinePageEditState createState() => _MachinePageEditState();
}

class _MachinePageEditState extends State<MachineEditPage> {
  bool _status = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight) / 2;
    final double itemWidth = size.width / 1.5;

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/LogoAmarela.png',
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
                      "Máquina 1",
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
              ),
              ElevatedButton(
                child: Text('Salvar'),
                onPressed: () {
                  Navigator.pushNamed(context, '/machines');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}




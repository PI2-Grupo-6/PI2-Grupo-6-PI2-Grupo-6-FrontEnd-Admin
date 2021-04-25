import 'package:flutter/material.dart';
import 'package:food_app/utils/constants.dart';

class MachinePage extends StatefulWidget {
  @override
  _MachinePageState createState() => _MachinePageState();
}

class _MachinePageState extends State<MachinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sample Code'),
        ),
        body: Container(
            padding: EdgeInsets.all(30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Bem vindo a tela de seleção de máquinas.",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Na máquina que desejar, clique em editar, visualizar ou ativar/desativar",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 30),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: List.generate(
                        5,
                        (index) {
                          return MachineCard();
                        },
                      ),
                    ),
                  )
                ])));
  }
}

class MachineCard extends StatelessWidget {
  const MachineCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                            // flex: 1,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                              Text(
                                "Máquina 1",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                "Local:",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                "Ru-Gama",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                "Status:",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                "Ativada",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              ElevatedButton(
                                child: Text('Editar'),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/machines');
                                },
                              ),
                              ElevatedButton(
                                child: Text('Visualizar'),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/machines');
                                },
                              ),
                            ]))
                      ])
                ])));
  }
}

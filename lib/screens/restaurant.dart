import 'package:flutter/material.dart';
import 'package:food_app/utils/constants.dart';
import 'package:food_app/widgets/appBar.dart';

import 'login.dart';

class RestaurantPage extends StatefulWidget {
  @override
  _RestaurantPageState createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  @override
  Widget build(BuildContext context) {
    final _machineNameController = TextEditingController();
    final _machineLocalController = TextEditingController();
    return Scaffold(
      appBar: CustomAppBar('Novo Restaurante'),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Adicione um novo restaurante",
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      height: 110,
                      width: double.maxFinite,
                      child: Card(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: AccentColorOverride(
                                color: kRapidaoBrown900,
                                child: TextField(
                                  controller: _machineNameController,
                                  decoration: InputDecoration(
                                    labelText: 'Nome da máquina',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 30),
                            Expanded(
                              child: AccentColorOverride(
                                color: kRapidaoBrown900,
                                child: TextField(
                                  controller: _machineLocalController,
                                  decoration: InputDecoration(
                                    labelText: 'Local da máquina',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      child: Text('Salvar'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/restaurants');
                      },
                    ),
                  ])
            ],
          ),
        ),
      ),
    );
  }
}

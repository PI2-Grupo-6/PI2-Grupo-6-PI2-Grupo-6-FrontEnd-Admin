import 'package:flutter/material.dart';
import 'package:food_app/utils/constants.dart';
import 'package:food_app/model/food.dart';
import 'package:food_app/widgets/switch.dart';
import 'package:responsive_grid/responsive_grid.dart';

class MachineCard extends StatelessWidget {
  final Food food;

  const MachineCard({
    Key key,
    this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(34),
              color: kPrimaryColor.withOpacity(.06),
            ),
            child: ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  xs: 12,
                  md: 4,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor.withOpacity(.15),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  xs: 12,
                  md: 4,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 30),
                        Text(
                          "Máquina1",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        SizedBox(height: 30),
                        Text(
                          "Ru-Gama",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        SizedBox(height: 30),
                        Text(
                          "Ativada",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ]),
                ),
                ResponsiveGridCol(
                  xs: 12,
                  md: 4,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 30),
                      ElevatedButton(
                        child: Text('Editar'),
                        onPressed: () {
                          Navigator.pushNamed(context, '/machines');
                        },
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        child: Text('Visualizar'),
                        onPressed: () {
                          Navigator.pushNamed(context, '/machines');
                        },
                      ),
                      SizedBox(height: 30),
                      SwitchElem(),
                    ],
                  ),
                ),
              ],
            )));
  }
}

import 'package:flutter/material.dart';
import 'package:food_app/model/restaurants_repository.dart';
import 'package:food_app/widgets/appBar.dart';

class RestaurantsPage extends StatefulWidget {
  @override
  _RestaurantsPageState createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
        appBar: CustomAppBar('Restaurants'),
        body: Center(
            child: Container(
                padding: EdgeInsets.all(30),
                child: SingleChildScrollView(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Bem vindo a tela de seleção de restaurante.",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Selecione o restaurante que deseja, ou, adicione um novo.",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      width: itemWidth,
                      child: PaginatedDataTable(
                        showCheckboxColumn: false,
                        rowsPerPage: 4,
                        columns: [
                          DataColumn(label: Text('Restaurante', style: Theme.of(context).textTheme.headline6)),
                          DataColumn(label: Text('Local do Restaurante', style: Theme.of(context).textTheme.headline6)),
                          DataColumn(label: Text('Num de máquinas', style: Theme.of(context).textTheme.headline6)),
                          DataColumn(label: Text('Visualizar', style: Theme.of(context).textTheme.headline6)),
                        ],
                        source: RestaurantRepository(context),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextButton(
                      child: Text('Adicionar restaurante'),
                      onPressed: () {Navigator.pushNamed(context, '/new/restaurant');},
                    ),
                  ],
                )))));
  }
}

import 'package:flutter/material.dart';
import 'package:food_app/model/restaurants_repository.dart';

class RestaurantsPage extends StatefulWidget {
  @override
  _RestaurantsPageState createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  @override
  Widget build(BuildContext context) {
    
    var size = MediaQuery.of(context).size;
    final double itemWidth = size.width / 2;

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
                      "Selecone o restauante que deseja ou adicione um novo.",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      width: itemWidth,
                      child: PaginatedDataTable(
                        showCheckboxColumn: false,
                        rowsPerPage: 4,
                        columns: [
                          DataColumn(label: Text('Restaurante')),
                          DataColumn(label: Text('Local do Restaurante')),
                          DataColumn(label: Text('Num de máquinas')),
                          DataColumn(label: Text('Visualizar')),
                        ],
                        source: RestaurantRepository(context),
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      child: Text('Adicionar restaurante'),
                      onPressed: () {Navigator.pushNamed(context, '/new/restaurant');},
                    ),
                  ],
                )))));
  }
}

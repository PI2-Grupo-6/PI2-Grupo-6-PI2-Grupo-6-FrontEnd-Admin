import 'package:flutter/material.dart';
import 'package:food_app/model/machines_repository.dart';
import 'package:food_app/widgets/appBar.dart';

class MachinesPage extends StatefulWidget {
  @override
  _MachinesPageState createState() => _MachinesPageState();
}

class _MachinesPageState extends State<MachinesPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight) / 2;
    final double itemWidth = size.width / 1.5;

    return Scaffold(
        appBar: CustomAppBar('Máquinas'),
        body: Center(
            child: Container(
                padding: EdgeInsets.all(30),
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
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
                      SizedBox(
                        width: itemWidth,
                        child: PaginatedDataTable(
                          showCheckboxColumn: false,
                          rowsPerPage: 4,
                          columns: [
                            DataColumn(label: Text('Máquina', style: Theme.of(context).textTheme.headline6)),
                            DataColumn(label: Text('Local da máquina', style: Theme.of(context).textTheme.headline6)),
                            DataColumn(label: Text('Status', style: Theme.of(context).textTheme.headline6)),
                            DataColumn(label: Text('Editar', style: Theme.of(context).textTheme.headline6)),
                            DataColumn(label: Text('Visualizar', style: Theme.of(context).textTheme.headline6)),
                            DataColumn(label: Text('Ativar', style: Theme.of(context).textTheme.headline6)),
                          ],
                          source: MachineRepository(context),
                        ),
                      ),
                      SizedBox(height: 30),
                      TextButton(
                        child: Text('Adicionar máquina'),
                        onPressed: () {
                          Navigator.pushNamed(context, '/new/machine');
                        },
                      ),
                    ])))));
  }
}

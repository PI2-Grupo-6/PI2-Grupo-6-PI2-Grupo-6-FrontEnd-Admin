import 'package:flutter/material.dart';
import 'package:food_app/model/machines_repository.dart';
import 'package:food_app/utils/constants.dart';
import 'package:food_app/widgets/machine_card.dart';

class MachinePage extends StatefulWidget {
  @override
  _MachinePageState createState() => _MachinePageState();
}

class _MachinePageState extends State<MachinePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight) / 2;
    final double itemWidth = size.width / 1.5;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Sample Code'),
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
                        DataColumn(label: Text('Máquina')),
                        DataColumn(label: Text('Local da máquina')),
                        DataColumn(label: Text('Status')),
                        DataColumn(label: Text('Editar')),
                        DataColumn(label: Text('Visualizar')),
                        DataColumn(label: Text('Ativar')),
                      ],
                      source: MachineRepository(context),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextButton(
                      child: Text('Adicionar máquina'),
                      onPressed: () {/* vai pra pagina do esqueceu a senha */},
                    ),
                ])))));
  }
}

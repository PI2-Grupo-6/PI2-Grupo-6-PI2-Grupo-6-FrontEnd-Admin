import 'package:flutter/material.dart';
import 'package:food_app/model/machines.dart';
import 'package:food_app/widgets/switch.dart';

class MachineRepository extends DataTableSource {
  MachineRepository(this.context) {
    _rows = <Machine>[
      Machine(name: 'Máquina 1', local: 'Gama-DF'),
      Machine(name: 'Máquina 2', local: 'Brasília-DF'),
      Machine(name: 'Máquina 3', local: 'Planaltina-DF'),
      Machine(name: 'Máquina 4', local: 'Ceilandia-DF'),
    ];
  }

  final BuildContext context;
  List<Machine> _rows;

  int _selectedCount = 0;

  @override
  DataRow getRow(int index) {
    assert(index >= 0);
    if (index >= _rows.length) return null;
    final row = _rows[index];
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(Text(row.name)),
        DataCell(Text(row.local)),
        DataCell(Text(row.status == true ? 'Ativada' : 'Desativada')),
        DataCell(
          IconButton(
            icon: const Icon(Icons.edit),
            tooltip: 'Edit',
            onPressed: () {
              Navigator.pushNamed(context, '/edit/machine');
            },
          ),
        ),
        DataCell(Icon(Icons.visibility)),
        DataCell(SwitchElem(row.status))
      ],
    );
  }

  @override
  int get rowCount => _rows.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;
}

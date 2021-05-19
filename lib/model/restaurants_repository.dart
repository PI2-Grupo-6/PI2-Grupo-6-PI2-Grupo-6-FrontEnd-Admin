import 'package:flutter/material.dart';
import 'package:food_app/model/restaurants.dart';

class RestaurantRepository extends DataTableSource {
  RestaurantRepository(this.context) {
    _rows = <Restaurant>[
      Restaurant(name: 'Ru Gama', local: 'Gama-DF', machineNumber: 3),
      Restaurant(name: 'Ru Darcy', local: 'Brasília-DF', machineNumber: 4),
      Restaurant(name: 'Ru Planaltina', local: 'Planaltina-DF', machineNumber: 2),
      Restaurant(name: 'Ru Ceilandia', local: 'Ceilandia-DF', machineNumber: 2),
    ];
  }

  final BuildContext context;
  List<Restaurant> _rows;

  int _selectedCount = 0;

  @override
  DataRow getRow(int index) {
    assert(index >= 0);
    if (index >= _rows.length) return null;
    final row = _rows[index];
    return DataRow.byIndex(
      index: index,
      selected: row.selected,
      onSelectChanged: (value) {
        Navigator.pushNamed(context, '/machines');
      },
      cells: [
        DataCell(Text(row.name)),
        DataCell(Text(row.local)),
        DataCell(Text(row.machineNumber.toString())),
        DataCell(Icon(Icons.visibility_outlined)),
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

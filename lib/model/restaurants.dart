import 'package:flutter/foundation.dart';

class Restaurant {
  Restaurant(
      {@required this.name, @required this.local, @required this.machineNumber})
      : assert(name != null),
        assert(local != null),
        assert(machineNumber != null);

  final String name;
  final String local;
  final int machineNumber;
  bool selected = false;
}

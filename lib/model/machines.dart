import 'package:flutter/foundation.dart';

class Machine {
  Machine({@required this.name, @required this.local})
      : assert(name != null),
        assert(local != null);

  final String name;
  final String local;
  bool status = false;
}

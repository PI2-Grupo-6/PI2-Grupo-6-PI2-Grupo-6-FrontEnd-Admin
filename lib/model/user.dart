import 'package:flutter/foundation.dart';


class User {
  const User({
    @required this.id,
    @required this.username,
    @required this.email,
    @required this.password,
    @required this.role,
    this.idRestaurante,
  })  : assert(id != null),
        assert(email != null),
        assert(password != null),
        assert(role != null);

  final int id;
  final String email;
  final String username;
  final String password;
  final String role;
  final int idRestaurante;
}

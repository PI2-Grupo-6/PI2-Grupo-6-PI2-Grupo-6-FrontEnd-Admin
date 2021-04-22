import 'package:flutter/material.dart';

import 'utils/constants.dart';
import 'screens/home.dart';
import 'screens/login.dart';
import 'utils/cut_corners_border.dart';

class RapidaoApp extends StatefulWidget {
  @override
  _RapidaoAppState createState() => _RapidaoAppState();
}

class _RapidaoAppState extends State<RapidaoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rapidao',
      home: HomePage(),
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
      theme: _kRapidaoTheme,
    );
  }
}

Route<dynamic> _getRoute(RouteSettings settings) {
  if (settings.name != '/login') {
    return null;
  }

  return MaterialPageRoute<void>(
    settings: settings,
    builder: (BuildContext context) => LoginPage(),
    fullscreenDialog: true,
  );
}

final ThemeData _kRapidaoTheme = _buildRapidaoTheme();

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: kRapidaoBrown900);
}

ThemeData _buildRapidaoTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: kRapidaoBrown900,
    primaryColor: kRapidaoPink100,
    scaffoldBackgroundColor: kRapidaoBackgroundWhite,
    cardColor: kRapidaoBackgroundWhite,
    textSelectionColor: kRapidaoPink100,
    errorColor: kRapidaoErrorRed,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: kRapidaoPink100,
      colorScheme: base.colorScheme.copyWith(
        secondary: kRapidaoBrown900,
      ),
    ),
    buttonBarTheme: base.buttonBarTheme.copyWith(
      buttonTextTheme: ButtonTextTheme.accent,
    ),
    primaryIconTheme: base.iconTheme.copyWith(color: kRapidaoBrown900),
    inputDecorationTheme: InputDecorationTheme(
      border: CutCornersBorder(),
    ),
    textTheme: _buildRapidaoTextTheme(base.textTheme),
    primaryTextTheme: _buildRapidaoTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildRapidaoTextTheme(base.accentTextTheme),
    iconTheme: _customIconTheme(base.iconTheme),
  );
}

TextTheme _buildRapidaoTextTheme(TextTheme base) {
  return base.copyWith(
    headline5: base.headline5.copyWith(
      fontWeight: FontWeight.w500,
    ),
    headline6: base.headline6.copyWith(
        fontSize: 18.0
    ),
    caption: base.caption.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
    ),
    bodyText1: base.bodyText1.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 16.0,
    ),
  ).apply(
    fontFamily: 'Rubik',
    displayColor: kRapidaoBrown900,
    bodyColor: kRapidaoBrown900,
  );
}

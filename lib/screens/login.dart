import 'package:flutter/material.dart';
import 'package:food_app/utils/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Image.asset(
                    'images/LogoAmarela.png',
                    height: 67,
                    width: 155,
                    fit: BoxFit.fill,
                  ), 
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.20,
                0,
                MediaQuery.of(context).size.width * 0.20,
                0),
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset(
                    'images/rapidao.png',
                    height: 96,
                    width: 96,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.15,
                        10,
                        MediaQuery.of(context).size.width * 0.15,
                        10),
                    child: AccentColorOverride(
                      color: kRapidaoBrown900,
                      child: TextField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.15,
                        10,
                        MediaQuery.of(context).size.width * 0.15,
                        10),
                    child: AccentColorOverride(
                      color: kRapidaoBrown900,
                      child: TextField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                        ),
                        obscureText: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.15,
                        10,
                        MediaQuery.of(context).size.width * 0.15,
                        10),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        child: Text('Entrar'),
                        onPressed: () {
                          Navigator.pushNamed(context, '/restaurants');
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.15,
                        10,
                        MediaQuery.of(context).size.width * 0.15,
                        10),
                    child: TextButton(
                      child: Text('Esqueceu a senha ?'),
                      onPressed: () {/* vai pra pagina do esqueceu a senha */},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AccentColorOverride extends StatelessWidget {
  const AccentColorOverride({Key key, this.color, this.child})
      : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      child: child,
      data: Theme.of(context).copyWith(
        accentColor: color,
        brightness: Brightness.dark,
      ),
    );
  }
}

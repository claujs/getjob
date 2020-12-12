import 'package:flutter/material.dart';
import 'package:getjob_app/Screens/Cadastro%20users/cad_users.dart';

void main() {
  runApp(Loginapp());
}

class Loginapp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (BuildContext context) => Login(),
      },
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(127, 15, 126, 1),
        elevation: 0,
      ),
      body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Center(
                  child: Container(
                      // width: double.infinity,
                      height: MediaQuery.of(context).size.height / 1,
                      color: Color.fromRGBO(127, 15, 126, 1),
                      child:
                          Column(crossAxisAlignment: CrossAxisAlignment.center,
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                            Container(
                                padding: EdgeInsets.only(
                                    left: 20, right: 15, top: 200),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Login",
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 2.0),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 2.0),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                )),
                            Container(
                                padding: EdgeInsets.only(
                                    left: 20, right: 15, top: 20),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: "Senha",
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 2.0),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.white, width: 2.0),
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                  ),
                                )),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 20, top: 15),
                                  child: Checkbox(value: true, onChanged: null),
                                ),
                                Container(
                                    padding: EdgeInsets.only(top: 15),
                                    child: Text(
                                      'Lembrar de mim',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                SizedBox(
                                  width: 40,
                                ),
                                Container(
                                    padding: EdgeInsets.only(top: 15),
                                    child: Icon(
                                      Icons.lock,
                                      color: Colors.white,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Text(
                                    'Esqueceu sua senha',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.all(60),
                              child: ButtonTheme(
                                minWidth: 200.0,
                                height: 60.0,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(
                                          color: Color.fromRGBO(62, 1, 61, 0))),
                                  onPressed: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Caduser()));
                                      print('ok');
                                    });
                                  },
                                  color: Color.fromRGBO(62, 1, 61, 1),
                                  textColor: Colors.white,
                                  child: Text("login".toUpperCase(),
                                      style: TextStyle(fontSize: 14)),
                                ),
                              ),
                              //Container(
                              //child: TextFormField(),
                              // ),
                            )
                          ])))
            ],
          )),
    );
  }
}

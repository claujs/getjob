import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validadores/validadores.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

void main() {
  runApp(Caduserapp());
}

class Caduserapp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/caduser': (BuildContext context) => Caduser(),
      },
    );
  }
}

class Caduser extends StatefulWidget {
  @override
  _CaduserPageState createState() => _CaduserPageState();
}

class _CaduserPageState extends State<Caduser> {
  GlobalKey<FormState> _formKey = GlobalKey();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(127, 15, 126, 1),
        elevation: 0,
        title: Text('Cadastro'),
      ),
      body: SingleChildScrollView(
          //physics: NeverScrollableScrollPhysics(),
          child: Column(
        children: [
          Center(
              child: Container(
                  // width: double.infinity,
                  height: MediaQuery.of(context).size.height / 1,
                  color: Color.fromRGBO(127, 15, 126, 1),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding:
                                EdgeInsets.only(left: 20, right: 15, top: 50),
                            child: Form(
                                child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                labelText: "E-mail",
                                labelStyle: TextStyle(color: Colors.white),
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
                            ))),
                        Container(
                            padding:
                                EdgeInsets.only(left: 20, right: 15, top: 30),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                labelStyle: TextStyle(color: Colors.white),
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
                        Container(
                            padding:
                                EdgeInsets.only(left: 20, right: 15, top: 30),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                labelStyle: TextStyle(color: Colors.white),
                                labelText: "Confirmar senha",
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
                            padding:
                                EdgeInsets.only(left: 20, right: 15, top: 30),
                            child: Form(
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  CpfInputFormatter(),
                                ],
                                style: TextStyle(color: Colors.white),
                                validator: (value) {
                                  // Aqui entram as validações
                                  return Validador()
                                      .add(Validar.CPF, msg: 'CPF Inválido')
                                      .add(Validar.OBRIGATORIO,
                                          msg: 'Campo obrigatório')
                                      .minLength(11)
                                      .maxLength(11)
                                      .valido(value, clearNoNumber: true);
                                },
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(color: Colors.white),
                                  labelText: "CPF",
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
                              ),
                            )),
                        Container(
                            padding:
                                EdgeInsets.only(left: 20, right: 15, top: 30),
                            child: Form(
                                child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                labelText: "Nome completo",
                                labelStyle: TextStyle(color: Colors.white),
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
                            ))),
                        Container(
                            padding:
                                EdgeInsets.only(left: 20, right: 15, top: 30),
                            child: Form(
                                child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                labelText: "Linkedin",
                                labelStyle: TextStyle(color: Colors.white),
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
                            ))),
                        Container(
                          padding:
                              EdgeInsets.only(left: 20, right: 15, top: 30),
                          child: Form(
                              child: IntlPhoneField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              labelStyle: TextStyle(color: Colors.white),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 2.0),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              labelText: 'Celular/Whatsapp',
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 2.0),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                            onChanged: (phone) {
                              print(phone.completeNumber);
                            },
                          )),
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
                              onPressed: () {},
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

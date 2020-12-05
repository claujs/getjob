import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  // This widget is the root of your application.
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
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 1,
                      color: Color.fromRGBO(127, 15, 126, 1),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.5,
                              width: MediaQuery.of(context).size.height * 0.5,
                              child: Container(
                                color: Color.fromRGBO(127, 15, 126, 1),
                                child: Container(
                                  padding: EdgeInsets.only(bottom: 100),
                                  child: Image(
                                    image: AssetImage(''),
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                              ),
                            ),
                          ])))
            ],
          )),
    );
  }
}

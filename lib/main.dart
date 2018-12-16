import 'package:flutter/material.dart';
import 'package:helloworld/button-text-icon.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/background.jpeg"),
                  fit: BoxFit.cover
                  )),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/logo.png"),
              ButtonTextIcon(
                color: Colors.red,
                text: "Login com Google",
                iconData: Icons.add,
              ),
              ButtonTextIcon(
                color: Colors.blue,
                text: "Login com Facebook",
                iconData: Icons.wifi,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.cyan,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.indigo,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.pink,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

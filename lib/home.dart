import 'package:flutter/material.dart';
import 'product.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text("HOME", style: TextStyle(fontWeight: FontWeight.w800)),
      )),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("USERNAME",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'San-serif',
                            color: Colors.blueGrey))),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                      width: 320,
                      child: TextField(
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            focusColor: Colors.amberAccent,
                            hintText: 'Enter username'),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("PASSWORD",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'San-serif',
                            color: Colors.blueGrey))),
                SizedBox(height: 10),
                Container(
                    width: 320,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Enter password'),
                    )),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Product()));
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return Colors.blueGrey;
                              return null; // Use the component's default.
                            },
                          ),
                        ),
                        child: Text("Login")))
              ]),
        ),
      ),
    );
  }
}

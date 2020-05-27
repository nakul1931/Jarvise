import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AttendanceScreen(),
    );
  }
}

class AttendanceScreen extends StatefulWidget {
  @override
  AttendanceScreenState createState() => new AttendanceScreenState();
}

class AttendanceScreenState extends State<AttendanceScreen> {
  int total = 120;

  List<int> isSelected = [];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              new Image.asset("image/back.png"),
              new Text(
                "Attendance Sheet",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              new Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 1.0,
                  width: 250.0,
                  color: Colors.black,
                ),
              ),
              new Column(
                children: List.generate(total, (_index) {
                  return Row(
                    children: <Widget>[
                      new Icon(
                        Icons.person,
                        color: Colors.green,
                        size: 30,
                      ),
                      new Container(
                        width: 10,
                      ),
                      new Container(
                        width: 150,
                        child: Text(
                          "Roll No" + " " + (_index + 1).toString(),
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                      ),
                      new Container(
                        width: 80,
                      ),
                      new Container(
                        child: Checkbox(
                            value:
                                isSelected.contains(_index + 1) ? true : false,
                            onChanged: (bool newvalue) {
                              if (isSelected.contains(_index + 1)) {
                                setState(() {
                                  isSelected.remove(_index + 1);
                                });
                              } else {
                                setState(() {
                                  isSelected.add(_index + 1);
                                });
                              }
                            }),
                      ),
                    ],
                  );
                }),
              ),
            ],
          ),
        )));
  }
}

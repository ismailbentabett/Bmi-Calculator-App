import 'package:flutter/material.dart';
import './routes/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    double height = 20;

  double age = 0;
  double weight = 0;

  void addit(double par) {
    par++;
  }

  void minit(double par) {
    setState(() {
      par--;
    });
  }

  double gender = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('BMI CALC')),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              gender = 0;
                              ;
                            });
                          },
                          child: Card(
                            child: Container(
                                color: gender == 0
                                    ? Color(0xff41445c)
                                    : Color(0xff1D1F33),
                                height: 120.0,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.face,
                                      color: Colors.blue,
                                      size: 36.0,
                                    ),
                                    Text(
                                      'Male',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                )),
                          )),
                    ),
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              gender = 1;
                              ;
                            });
                          },
                          child: Card(
                            child: Container(
                                color: gender == 1
                                    ? Color(0xff41445c)
                                    : Color(0xff1D1F33),
                                height: 120.0,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.face,
                                      color: Colors.blue,
                                      size: 36.0,
                                    ),
                                    Text(
                                      'Female',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                )),
                          )),
                    ),
                  ]),
              Row(children: <Widget>[
                Expanded(
                  child: Card(
                    child: Container(
                        color: Color(0xff1D1F33),
                        height: 120.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 10),
                            Text(
                              'HEIGHT',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text('$height CM'),
                            Slider(
                              value: height,
                              min: 0,
                              max: 300,
                              divisions: 20,
                              label: height.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  height = value;
                                });
                              },
                            ),
                          ],
                        )),
                  ),
                ),
              ]),
              Row(children: <Widget>[
                Expanded(
                  child: Card(
                    child: Container(
                        color: Color(0xff1D1F33),
                        height: 120.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Age',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('$age'),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    color: Colors.blue,
                                    textColor: Colors.white,
                                    child: Icon(
                                      Icons.add,
                                      size: 24,
                                    ),
                                    padding: EdgeInsets.all(16),
                                    shape: CircleBorder(),
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        if (age > 0) {
                                          age--;
                                        }
                                      });
                                    },
                                    color: Colors.blue,
                                    textColor: Colors.white,
                                    child: Icon(
                                      Icons.remove,
                                      size: 24,
                                    ),
                                    padding: EdgeInsets.all(16),
                                    shape: CircleBorder(),
                                  )
                                ])
                          ],
                        )),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Container(
                        color: Color(0xff1D1F33),
                        height: 120.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Weight',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('${weight}'),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    color: Colors.blue,
                                    textColor: Colors.white,
                                    child: Icon(
                                      Icons.add,
                                      size: 24,
                                    ),
                                    padding: EdgeInsets.all(16),
                                    shape: CircleBorder(),
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        if (weight > 0) {
                                          weight--;
                                        }
                                      });
                                    },
                                    color: Colors.blue,
                                    textColor: Colors.white,
                                    child: Icon(
                                      Icons.remove,
                                      size: 24,
                                    ),
                                    padding: EdgeInsets.all(16),
                                    shape: CircleBorder(),
                                  )
                                ])
                          ],
                        )),
                  ),
                ),
              ]),
              
              Card(
                  color: Color(0xff1D1F33),
                  child: Container(
                      width: double.infinity,
                      child: FlatButton(
                          child: Text('Claculate Your BM'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResultRoute(gender,height,age,weight)),
                            );
                          }))),
            ]));
    ;
  }
}

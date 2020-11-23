import 'package:flutter/material.dart';
import './Widgets/gender.dart';
import './Widgets/height.dart';
import './Widgets/age_weight.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('BMI CALC')),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Gender(),
              Heightwid(),
              AgeWeight(),
              Card(
                  color: Color(0xff1D1F33),
                  child: Container(
                      width: double.infinity,
                      child: FlatButton(
                          child: Text('Claculate Your BM'),
                          
                          onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ResultRoute()),
  );
}
                          
                          
                          
                          ))),
            ]));
    ;
  }
}

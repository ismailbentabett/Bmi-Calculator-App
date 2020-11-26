import 'package:flutter/material.dart';
import '../Widgets/result_class.dart';
import 'dart:math';


List <ResultWid> resultList = [
ResultWid(category:'Underweight	',letter:'ughhh eat something , fucking sandwitch'),
ResultWid(category:'Normal',letter:'you doing fine keep it up'),
ResultWid(category:'Overweight',letter:'really ??? what you gonna next , me?'),

];




class ResultRoute extends StatefulWidget {
final double age;
  final double weight;
  final double height;
  final double gender;
  ResultRoute(this.gender, this.height ,this.age, this.weight);
  @override
  _ResultRouteState createState() => _ResultRouteState();
}

class _ResultRouteState extends State<ResultRoute> {

  @override
  Widget build(BuildContext context) {
      double  result = widget.weight / pow (widget.height/100,2);
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Center(
        child: Card(
          child: Container(
            color: Color(0xff1D1F33),
            height: 300,
            width: 300,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
            Text('normal'),
                Text(result.round().toString(),
                style:TextStyle(
                    color:Colors.green,
                    fontSize : 40,
                )
                ),
                  Text('Normal Bmi Ranege'),
                Text('You Are Doing Great'),
              ],
            ),
          ),
        ),
      ),
    );;
  }
}
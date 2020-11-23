import 'package:flutter/material.dart';
import '../Widgets/result_class.dart';



List <ResultWid> resultList = [
ResultWid(category:'Underweight	',letter:'ughhh eat something , fucking sandwitch'),
ResultWid(category:'Normal',letter:'you doing fine keep it up'),
ResultWid(category:'Overweight',letter:'really ??? what you gonna next , me?'),
];

class ResultRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
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
                Text('Normal'),
                Text('22.1'),
                  Text('Normal Bmi Ranege'),
                Text('You Are Doing Great'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

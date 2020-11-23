import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  const Gender({
    Key key,
  }) : super(key: key);
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  int gender = null;

  @override
  Widget build(BuildContext context) {
    return Row(
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
                      color: gender == 0 ? Color(0xff41445c) : Color(0xff1D1F33),
                      height: 120.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.face,
                            color: Colors.blue,
                            size: 36.0,
                          ),
                          Text('Male',
                             style: TextStyle(
        fontSize: 20,
      
      ),),
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
                      color: gender == 1 ? Color(0xff41445c) : Color(0xff1D1F33),
                      height: 120.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.face,
                            color: Colors.blue,
                            size: 36.0,
                          ),
                          Text('Female',
                             style: TextStyle(
        fontSize: 20,
      
      ),),
                        ],
                      )),
                )),
          ),
        ]);
    ;
  }
}

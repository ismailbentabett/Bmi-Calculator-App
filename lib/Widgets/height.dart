import 'package:flutter/material.dart';




double _currentSliderValue = 20;



class Heightwid extends StatefulWidget {
    const Heightwid({
    Key key,
  }) : super(key: key);
  @override
  _HeightwidState createState() => _HeightwidState();
}

class _HeightwidState extends State<Heightwid> {
  @override
  Widget build(BuildContext context) {
    return  Row(children: <Widget>[
                Expanded(
                  child: Card(
                    child: Container(
                        color: Color(0xff1D1F33),
                        height: 120.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                              SizedBox(height : 10),
                            Text('HEIGHT',
                             style: TextStyle(
        fontSize: 20,
      
      ),
    ),
                            Text('$_currentSliderValue CM'),
                                    Slider(
    value: _currentSliderValue,
    min: 0,
    max: 30,
    divisions: 20,
    label: _currentSliderValue.round().toString(),
    onChanged: (double value) {
      setState(() {
        _currentSliderValue = value;
      });
    },
  ),
                          ],
                        )),
                  ),
                ),



              ]);
  }
}











